#!/usr/bin/env python3

import re

import yaml


def level_region(node):
    levels = {
        "香港": 9,
        "新加坡": 8,
        "日本": 7,
        "美国": 6,
        "台湾": 5,
        "韩国": 4,
        "俄罗斯": 3,
        "德国": 2,
        "英国": 1,
    }
    info = node if isinstance(node, str) else node["name"]
    for l in levels:
        if re.search(l, info) != None:
            return levels[l]
    return 0


def level_type(node):
    levels = {
        " AC": 6,
        "( IEPL.*)?Premium": 5,
        "( IEPL.*)?Lite": 3,
        " IEPL": 4,
        " (BGP|GIA|Aliyun|DMIT)": 2,
        " 5G": 1,
    }
    info = node if isinstance(node, str) else node["name"]
    for l in levels:
        if re.search(l, info) != None:
            return levels[l]
    return 0


filters = {
    "__Proxy__": ".*",
    "__TopBlocked__": ".*",
    "__Domestic__": ".*",
    "__Spam__": ".*",
    "__Crack__": ".*",
    "__Special__": ".*",
    "__DomesticTV__": ".*",
    "__Douyin__": ".*",
    "__YouTube__": ".*",
    "__Netflix__": ".*",
    "__Disney__": ".*",
    "__Spotify__": ".*",
    "__GlobalTV__": ".*",
    "__Microsoft__": ".*",
    "__Apple__": ".*",
    "__Steam__": ".*",
    "__Blizzard__": ".*",
    "__Scholar__": ".*",
    "__Telegram__": ".*",
    "__Discord__": ".*",
    "__SSH__": ".*",
    "__PT__": ".*",
    "__Drive__": ".*",
    "__PayPal__": ".*",
    "__Crypto__": ".*",
    "__Speedtest__": ".*",
    "__Others__": ".*",
}

with open("clash.list", "r", encoding="utf-8") as f:
    clash_list = yaml.load(f, yaml.CFullLoader)
clash_list["proxies"].sort(key=level_region, reverse=True)
clash_list["proxies"].sort(key=level_type, reverse=True)
clash_nodes = (
    yaml.dump(
        clash_list,
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
clash_remarks = {}
for f in filters:
    clash_remarks[f] = ""
    for p in clash_list["proxies"]:
        if re.search(filters[f], p["name"]) != None:
            clash_remarks[f] += "  - " + p["name"] + "\n"
    clash_remarks[f] = clash_remarks[f].rstrip()
with open("Dler.yaml", "r+", encoding="utf-8", newline="\n") as f:
    clash_conf = f.read()
    clash_conf = clash_conf.replace("__nodes__", clash_nodes)
    for r in clash_remarks:
        clash_conf = clash_conf.replace(r, clash_remarks[r])
    f.seek(0)
    f.truncate()
    f.write(clash_conf)

with open("surge.list", "r", encoding="utf-8") as f:
    surge_list = f.readlines()
surge_list.sort(key=level_region, reverse=True)
surge_list.sort(key=level_type, reverse=True)
surge_nodes = ""
for l in surge_list:
    surge_nodes += l
surge_nodes = surge_nodes.rstrip()
surge_remarks = {}
for f in filters:
    surge_remarks[f] = ""
    for l in surge_list:
        if re.search(filters[f], l) != None:
            surge_remarks[f] += "," + re.match(r"^(.*?) =", l).group(1)
with open("Dler.conf", "r+", encoding="utf-8", newline="\n") as f:
    surge_conf = f.read()
    surge_conf = surge_conf.replace("__nodes__", surge_nodes)
    for r in surge_remarks:
        surge_conf = surge_conf.replace(r, surge_remarks[r])
    f.seek(0)
    f.truncate()
    f.write(surge_conf)
