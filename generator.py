#!/usr/bin/env python3
# coding=utf-8

import re

import yaml


def level(node):
    levels = {
        " CC": 6,
        " AIA": 5,
        " IEPL": 4,
        " BGP": 3,
        " AGA": 2,
        " GIA": 1,
    }
    info = node if type(node) == str else node["name"]
    for l in levels:
        if re.search(l, info) != None:
            return levels[l]
    return 0


with open("clash.list", "r", encoding="utf-8") as f:
    clash_list = yaml.load(f, yaml.FullLoader)
clash_list["proxies"].sort(key=level, reverse=True)
clash_nodes = (
    yaml.dump(
        clash_list,
        default_flow_style=False,
        allow_unicode=True,
        line_break="\n",
        encoding="utf-8",
        sort_keys=False,
    )
    .decode("utf-8")
    .rstrip()
)
clash_remarks = ""
for p in clash_list["proxies"]:
    clash_remarks += "  - " + p["name"] + "\n"
clash_remarks = clash_remarks.rstrip()
with open("Dler.yaml", "r+", encoding="utf-8", newline="\n") as f:
    origin = f.read()
    f.seek(0)
    f.truncate()
    f.write(
        origin.replace("__nodes__", clash_nodes).replace("__remarks__", clash_remarks)
    )

with open("surge.list", "r", encoding="utf-8") as f:
    surge_list = f.readlines()
surge_list.sort(key=level, reverse=True)
surge_nodes = ""
for l in surge_list:
    surge_nodes += l
surge_nodes = surge_nodes.rstrip()
surge_remarks = ""
for l in surge_list:
    surge_remarks += "," + re.match(r"^(.*?) =", l).group(1)
with open("Dler.conf", "r+", encoding="utf-8", newline="\n") as f:
    origin = f.read()
    f.seek(0)
    f.truncate()
    f.write(
        origin.replace("__nodes__", surge_nodes).replace("__remarks__", surge_remarks)
    )
