#python script for converting flippers .ir format to .bin for spi flash
#data from this code is needed for reading ir pulses correctly for each device and its buttons
#you get .bin file and .h -> .bin needs to be flashed to spi chip and .h contents should be put in your code
from collections import OrderedDict
import sys, struct, os
CHIP_SIZE = 2 * 1024 * 1024 #2 MB in my instance, used for filling unused data 
MAGIC = 0xBABAB01 # magic code for start of every pulse train, you can modify this
CAP_DURATION = 65000   # cap all durations to this limit (99 % of ir spaces or marks fit)

def hex_to_int_le(s):
    s = s.strip()
    if " " not in s:
        return int(s, 16)
    return int.from_bytes([int(x, 16) for x in s.split()], "little")

def parse_ir_file(path):
    entries = []
    with open(path, "r") as f:
        lines = [line.strip() for line in f if line.strip()]
    current = {}
    in_data = False
    for line in lines:
        if line.startswith("#"):
            if current and ("type" in current and ("protocol" in current or "data" in current)):
                entries.append(current)
            current = {}
            in_data = False
            continue
        if in_data:
            try:
                current["data"].extend([int(x) for x in line.split() if x.isdigit()])
            except ValueError:
                pass
            continue
        if ":" in line:
            k, v = map(str.strip, line.split(":", 1))
            k = k.lower()
            if k == "data":
                current["data"] = []
                try:
                    current["data"].extend([int(x) for x in v.split() if x.isdigit()])
                except ValueError:
                    pass
                in_data = True
            else:
                current[k] = v
    if current and ("type" in current and ("protocol" in current or "data" in current)):
        entries.append(current)
    return entries

#protocol timings for each ir variant from flipper zero
PROTOCOLS = {
    "nec": {"freq": 38000, "header": [(1, 9000), (0, 4500)],
            "bit0": [(1, 560), (0, 560)], "bit1": [(1, 560), (0, 1690)],
            "stop": [(1, 560)], "bit_order": "lsb", "bits": 32},
    "necext": {"freq": 38000, "header": [(1, 9000), (0, 4500)],
               "bit0": [(1, 560), (0, 560)], "bit1": [(1, 560), (0, 1690)],
               "stop": [(1, 560)], "bit_order": "lsb", "bits": 32},
    "nec42": {"freq": 38000, "header": [(1, 9000), (0, 4500)],
              "bit0": [(1, 560), (0, 560)], "bit1": [(1, 560), (0, 1690)],
              "stop": [(1, 560)], "bit_order": "lsb", "bits": 42},
    "nec42ext": {"freq": 38000, "header": [(1, 9000), (0, 4500)],
                 "bit0": [(1, 560), (0, 560)], "bit1": [(1, 560), (0, 1690)],
                 "stop": [(1, 560)], "bit_order": "lsb", "bits": 42},
    "samsung32": {"freq": 38000, "header": [(1, 4500), (0, 4500)],
                  "bit0": [(1, 550), (0, 550)], "bit1": [(1, 550), (0, 1690)],
                  "stop": [(1, 550)], "bit_order": "lsb", "bits": 32},
    "rc5": {"freq": 36000, "header": [],
            "bit0": [(1, 889), (0, 889)], "bit1": [(0, 889), (1, 889)],
            "stop": [], "bit_order": "msb", "bits": 14},
    "rc5x": {"freq": 36000, "header": [],
             "bit0": [(1, 889), (0, 889)], "bit1": [(0, 889), (1, 889)],
             "stop": [], "bit_order": "msb", "bits": 14},
    "rc6": {"freq": 36000, "header": [(1, 2666), (0, 889)],
            "bit0": [(0, 444), (1, 444)], "bit1": [(1, 444), (0, 444)],
            "stop": [], "bit_order": "msb", "bits": 21},
    "rca": {"freq": 56000, "header": [(1, 4000), (0, 4000)],
            "bit0": [(1, 500), (0, 1000)], "bit1": [(1, 500), (0, 2000)],
            "stop": [], "bit_order": "msb", "bits": 24},
    "kaseikyo": {"freq": 37000, "header": [(1, 3456), (0, 1728)],
                 "bit0": [(1, 432), (0, 432)], "bit1": [(1, 432), (0, 1296)],
                 "stop": [(1, 432)], "bit_order": "lsb", "bits": 48},
    "pioneer": {"freq": 40000, "header": [(1, 8500), (0, 4225)],
                "bit0": [(1, 500), (0, 500)], "bit1": [(1, 500), (0, 1500)],
                "stop": [], "bit_order": "lsb", "bits": 32},
    "sirc": {"freq": 40000, "header": [(1, 2400), (0, 600)],
             "bit0": [(1, 600), (0, 600)], "bit1": [(1, 1200), (0, 600)],
             "stop": [], "bit_order": "lsb", "bits": 12},
    "sirc15": {"freq": 40000, "header": [(1, 2400), (0, 600)],
               "bit0": [(1, 600), (0, 600)], "bit1": [(1, 1200), (0, 600)],
               "stop": [], "bit_order": "lsb", "bits": 15},
    "sirc20": {"freq": 40000, "header": [(1, 2400), (0, 600)],
               "bit0": [(1, 600), (0, 600)], "bit1": [(1, 1200), (0, 600)],
               "stop": [], "bit_order": "lsb", "bits": 20},
}

def build_nec_frame(info):
    a = hex_to_int_le(info.get("address","00")) & 0xFF
    c = hex_to_int_le(info.get("command","00")) & 0xFF
    return a | ((~a & 0xFF) << 8) | (c << 16) | ((~c & 0xFF) << 24)

def build_necext_frame(info):
    a = hex_to_int_le(info.get("address","0000")) & 0xFFFF
    c = hex_to_int_le(info.get("command","0000")) & 0xFFFF
    return a | (c << 16)

def build_nec42_frame(info):
    a = hex_to_int_le(info.get("address","0000")) & 0x1FFF
    c = hex_to_int_le(info.get("command","00")) & 0xFF
    return a | ((~a & 0x1FFF) << 13) | (c << 26) | ((~c & 0xFF) << 34)

def build_nec42ext_frame(info):
    a = hex_to_int_le(info.get("address","0000000")) & 0x3FFFFFF
    c = hex_to_int_le(info.get("command","0000")) & 0xFFFF
    return a | (c << 26)

def build_samsung_frame(info):
    a = hex_to_int_le(info.get("address","00")) & 0xFF
    c = hex_to_int_le(info.get("command","00")) & 0xFF
    return a | (a << 8) | (c << 16) | ((~c & 0xFF) << 24)

def build_pioneer_frame(info):
    a = hex_to_int_le(info.get("address","00")) & 0xFF
    c = hex_to_int_le(info.get("command","00")) & 0xFF
    return a | ((~a & 0xFF) << 8) | (c << 16) | ((~c & 0xFF) << 24)
#probably the worst one
def build_kaseikyo_frame(info):
    vendor_id = hex_to_int_le(info.get("address","0220")) & 0xFFFF
    command = hex_to_int_le(info.get("command","0000")) & 0xFFFF
    genre1 = int(info.get("genre1","0"),16) & 0xF
    genre2 = int(info.get("genre2","0"),16) & 0xF
    id_bits = int(info.get("id","0"),16) & 0x3
    b0 = vendor_id & 0xFF
    b1 = (vendor_id >> 8) & 0xFF
    vendor_parity = b0 ^ b1
    vendor_parity = (vendor_parity & 0xF) ^ (vendor_parity >> 4)
    b2 = (vendor_parity & 0xF) | (genre1 << 4)
    b3 = (genre2 & 0xF) | ((command & 0xF) << 4)
    b4 = ((id_bits & 0x3) << 6) | ((command >> 4) & 0x3F)
    b5 = b2 ^ b3 ^ b4
    return b0 | (b1 << 8) | (b2 << 16) | (b3 << 24) | (b4 << 32) | (b5 << 40)

def build_rc5_frame(info):
    addr = hex_to_int_le(info.get("address","00")) & 0x1F
    cmd  = hex_to_int_le(info.get("command","00")) & 0x3F
    return (0b11 << 12) | (1 << 11) | (addr << 6) | cmd

def build_rc5x_frame(info):
    addr = hex_to_int_le(info.get("address","00")) & 0x1F
    cmd  = hex_to_int_le(info.get("command","00")) & 0x7F
    c6 = (~cmd >> 6) & 0x01
    return (1 << 13) | (c6 << 12) | (1 << 11) | (addr << 6) | cmd

def build_rc6_frame(info):
    addr = hex_to_int_le(info.get("address","00")) & 0xFF
    cmd  = hex_to_int_le(info.get("command","00")) & 0xFF
    return (1 << 20) | (0b000 << 17) | (1 << 16) | (addr << 8) | cmd

def build_rca_frame(info):
    addr = hex_to_int_le(info.get("address","0")) & 0xF
    cmd  = hex_to_int_le(info.get("command","00")) & 0xFF
    return (addr << 20) | (cmd << 12) | ((~addr & 0xF) << 8) | (~cmd & 0xFF)

def build_sirc_frame(info):
    cmd  = hex_to_int_le(info.get("command","00")) & 0x7F
    addr = hex_to_int_le(info.get("address","00")) & 0x1F
    return cmd | (addr << 7)

def build_sirc15_frame(info):
    cmd  = hex_to_int_le(info.get("command","00")) & 0x7F
    addr = hex_to_int_le(info.get("address","00")) & 0xFF
    return cmd | (addr << 7)

def build_sirc20_frame(info):
    cmd  = hex_to_int_le(info.get("command","00")) & 0x7F
    addr = hex_to_int_le(info.get("address","00")) & 0x1FFF
    return cmd | (addr << 7)

FRAME_BUILDERS = {
    "nec": build_nec_frame, "necext": build_necext_frame,
    "nec42": build_nec42_frame, "nec42ext": build_nec42ext_frame,
    "samsung32": build_samsung_frame, "pioneer": build_pioneer_frame,
    "kaseikyo": build_kaseikyo_frame, "rc5": build_rc5_frame,
    "rc5x": build_rc5x_frame, "rc6": build_rc6_frame,
    "rca": build_rca_frame, "sirc": build_sirc_frame,
    "sirc15": build_sirc15_frame, "sirc20": build_sirc20_frame,
}


def generate_pulses_from_parsed(entry):
    proto = entry["protocol"].lower()
    cfg = PROTOCOLS[proto]
    builder = FRAME_BUILDERS[proto]
    frame_val = builder(entry)
    bits = cfg["bits"]
    freq = cfg["freq"]

    pulses = []
    for lvl, dur in cfg["header"]:
        d = min(dur, CAP_DURATION)
        pulses.append(d)
    for i in range(bits):
        if cfg["bit_order"] == "lsb":
            bit = (frame_val >> i) & 1
        else:
            bit = (frame_val >> (bits - 1 - i)) & 1
        seq = cfg["bit1"] if bit else cfg["bit0"]
        for lvl, dur in seq:
            d = min(dur, CAP_DURATION)
            pulses.append(d)
    for lvl, dur in cfg["stop"]:
        d = min(dur, CAP_DURATION)
        pulses.append(d)
    return pulses, freq

def generate_pulses_from_raw(entry):
    data = entry.get("data", [])
    if not data:
        return None
    freq = int(entry.get("frequency", 38000))
    pulses = [min(d, CAP_DURATION) for d in data]
    return pulses, freq


def main():
    devices = OrderedDict()
    for ir_file in sys.argv[1:]:
        dev_name = os.path.splitext(os.path.basename(ir_file))[0]
        entries = parse_ir_file(ir_file)
        funcs = OrderedDict()
        for entry in entries:
            bname = entry.get("name", f"btn{len(funcs)}")
            if entry.get("type") == "parsed":
                try:
                    pulses, freq = generate_pulses_from_parsed(entry)
                except KeyError:
                    print(f"Unknown protocol {entry.get('protocol')} in {bname}, skipping")
                    continue
            elif entry.get("type") == "raw":
                res = generate_pulses_from_raw(entry)
                if res is None:
                    continue
                pulses, freq = res
            else:
                continue
            funcs.setdefault(bname, []).append((pulses, freq))
        if funcs:
            devices[dev_name] = funcs

    current_addr = 0
    group_info = []
    #write bin format with magic code
    with open("flash.bin", "wb") as f:
        for dev_name, funcs in devices.items():
            for func_name, codes in funcs.items():
                start = current_addr
                for pulses, freq in codes:
                    f.write(struct.pack("<I", MAGIC))               
                    f.write(struct.pack("<H H", freq, len(pulses)))
                    for p in pulses:
                        f.write(struct.pack("<H", p))
                    current_addr += 4 + 4 + 2 * len(pulses)
                end = current_addr
                group_info.append((dev_name, func_name, start, end, len(codes)))

    
    with open("flash.bin", "ab") as f:
        if current_addr < CHIP_SIZE:
            f.write(b'\xFF' * (CHIP_SIZE - current_addr))

    # Generate buttons.h
    with open("buttons.h", "w", encoding="utf-8") as h:
        h.write("// Auto‑generated button tree, copy this to your code or use directly\n")
        h.write("typedef struct {\n")
        h.write("    const char *name;\n")
        h.write("    uint32_t    start_addr;\n")
        h.write("    uint32_t    end_addr;\n")
        h.write("} ButtonFunc_t;\n\n")
        h.write("typedef struct {\n")
        h.write("    const char      *name;\n")
        h.write("    const ButtonFunc_t *functions;\n")
        h.write("    uint8_t          func_count;\n")
        h.write("} Device_t;\n\n")

        dev_func_map = OrderedDict()
        for dev_name, func_name, start, end, cnt in group_info:#cnt is here just from previous experiments
            if dev_name not in dev_func_map:
                dev_func_map[dev_name] = []
            dev_func_map[dev_name].append((func_name, start, end))

        for dev_name, funcs in dev_func_map.items():
            arr_name = f"funcs_{dev_name}"
            h.write(f"static const ButtonFunc_t {arr_name}[] = {{\n")
            for func_name, start, end in funcs:
                h.write(f'    {{ "{func_name}", 0x{start:08X}, 0x{end:08X} }},\n')
            h.write("};\n\n")

        h.write("static const Device_t device_list[] = {\n")
        for dev_name, funcs in dev_func_map.items():
            h.write(f'    {{ "{dev_name}", funcs_{dev_name}, {len(funcs)} }},\n')
        h.write("};\n\n")
        h.write(f"#define NUM_DEVICES  {len(dev_func_map)}\n")

    print(f"flash.bin ({current_addr} bytes) and buttons.h generated.")

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python ir_to_spi.py device1.ir [device2.ir ...]")
        sys.exit(1)
    main()
