#!/usr/bin/env python3

import re

import yaml

LEVELS_TYPE = {
    "\\*": 20000,
    "➔": 10000,
}

LEVELS_CLASS = {
    " GIA": 500,
    " Fusion.*Pre": 400,
    " Fusion.*Adv": 300,
    " Fusion.*": 200,
    " CIA": 100,
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
    "__AISuite__": ".*",
    "__APNS__": ".*",
    "__Apple__": ".*",
    "__Blizzard__": ".*",
    "__Crack__": ".*",
    "__Crypto__": ".*",
    "__Discord__": ".*",
    "__Disney__": ".*",
    "__Domestic__": ".*",
    "__DomesticTV__": ".*",
    "__Douyin__": ".*",
    "__Downloader__": ".*",
    "__Drive__": ".*",
    "__GlobalTV__": ".*",
    "__IXP__": ".*",
    "__Microsoft__": ".*",
    "__miHoYo__": ".*",
    "__Netflix__": ".*",
    "__Others__": ".*",
    "__PayPal__": ".*",
    "__Proxy__": ".*",
    "__PT__": ".*",
    "__RustDesk__": ".*",
    "__Scholar__": ".*",
    "__Spam__": ".*",
    "__Special__": ".*",
    "__Speedtest__": ".*",
    "__Spotify__": ".*",
    "__SSH__": ".*",
    "__Steam__": ".*",
    "__Telegram__": ".*",
    "__TikTok__": ".*",
    "__TopBlocked__": ".*",
    "__YouTube__": ".*",
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
