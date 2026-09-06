#!/usr/bin/env python3

import re

import yaml

LEVELS_TYPE = {
    r"\*": 20000,
    r"➔": 10000,
}

LEVELS_CLASS = {
    r" GIA": 500,
    r" Fusion.*Pre": 400,
    r" Fusion.*Adv": 300,
    r" Fusion.*": 200,
    r" CIA": 100,
}

LEVELS_REGION = {
    "香港": 9,
    "新加坡": 8,
    "日本": 7,
    "德国": 6,
    "美国": 5,
    "台湾": 4,
    "韩国": 3,
    "俄罗斯": 2,
    "英国": 1,
}

FILTERS = {
    "__AISuite__": r".*",
    "__APNS__": r"\*",
    "__Apple__": r".*",
    "__Blizzard__": r".*",
    "__Crack__": r".*",
    "__Crypto__": r".*",
    "__Discord__": r".*",
    "__Disney__": r".*",
    "__Domestic__": r".*",
    "__DomesticTV__": r".*",
    "__Douyin__": r".*",
    "__Downloader__": r".*",
    "__Drive__": r".*",
    "__GlobalTV__": r".*",
    "__IXP__": r".*",
    "__Microsoft__": r".*",
    "__miHoYo__": r".*",
    "__Netflix__": r".*",
    "__Others__": r".*",
    "__PayPal__": r".*",
    "__Proxy__": r".*",
    "__PT__": r".*",
    "__RustDesk__": r".*",
    "__Scholar__": r".*",
    "__Spam__": r".*",
    "__Special__": r".*",
    "__Speedtest__": r".*",
    "__Spotify__": r".*",
    "__SSH__": r".*",
    "__Steam__": r".*",
    "__Telegram__": r".*",
    "__TikTok__": r".*",
    "__TopBlocked__": r".*",
    "__YouTube__": r".*",
}


def level(node):
    info = node if isinstance(node, str) else node["name"]
    for l in LEVELS_TYPE:
        if re.search(l, info) is not None:
            level_type = LEVELS_TYPE[l]
            break
        level_type = 0
    for l in LEVELS_CLASS:
        if re.search(l, info) is not None:
            level_class = LEVELS_CLASS[l]
            break
        level_class = 0
    for l in LEVELS_REGION:
        if re.search(l, info) is not None:
            level_region = LEVELS_REGION[l]
            break
        level_region = 0
    return level_type + level_class + level_region


with open("mihomo.list", "r", encoding="utf-8") as f:
    mihomo_list = yaml.load(f, yaml.CFullLoader)
mihomo_list["proxies"].sort(key=level, reverse=True)
mihomo_nodes = (
    yaml.dump(
        mihomo_list,
        Dumper=yaml.CDumper,
        default_flow_style=False,
        allow_unicode=True,
        line_break="\n",
        encoding="utf-8",
        sort_keys=False,
    )
    .decode("utf-8")
    .rstrip()
)
mihomo_remarks = {}
for f in FILTERS:
    mihomo_remarks[f] = ""
    for p in mihomo_list["proxies"]:
        if re.search(FILTERS[f], p["name"]) is not None:
            mihomo_remarks[f] += "  - " + p["name"] + "\n"
    mihomo_remarks[f] = mihomo_remarks[f].rstrip()
with open("mihomo.yaml", "r+", encoding="utf-8", newline="\n") as f:
    mihomo_conf = f.read()
    mihomo_conf = mihomo_conf.replace("__nodes__", mihomo_nodes)
    for r in mihomo_remarks:
        mihomo_conf = mihomo_conf.replace(r, mihomo_remarks[r])
    f.seek(0)
    f.truncate()
    f.write(mihomo_conf)

with open("surge.list", "r", encoding="utf-8") as f:
    surge_list = f.readlines()
surge_list.sort(key=level, reverse=True)
surge_nodes = ""
for l in surge_list:
    surge_nodes += l
surge_nodes = surge_nodes.replace(", ", ",").rstrip()
surge_remarks = {}
for f in FILTERS:
    surge_remarks[f] = ""
    for l in surge_list:
        if re.search(FILTERS[f], l) is not None:
            surge_remarks[f] += "," + re.match(r"^(.*?) =", l).group(1)
with open("surge.conf", "r+", encoding="utf-8", newline="\n") as f:
    surge_conf = f.read()
    surge_conf = surge_conf.replace("__nodes__", surge_nodes)
    for r in surge_remarks:
        surge_conf = surge_conf.replace(r, surge_remarks[r])
    f.seek(0)
    f.truncate()
    f.write(surge_conf)
