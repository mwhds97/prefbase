#!/usr/bin/env python3
# coding=utf-8

import re
import sys

import yaml


def level(node):
    levels = {
        " CC": 7,
        " AIA(?=\+)": 6,
        " AIA(?!\+)": 5,
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


if "clash" in sys.argv[1]:
    with open(sys.argv[1], "r", encoding="utf-8") as f:
        conf = yaml.load(f, yaml.FullLoader)
    conf["proxies"].sort(key=level, reverse=True)
    with open("clash_sorted.list", "w", encoding="utf-8", newline="\n") as f:
        yaml.dump(
            conf,
            f,
            default_flow_style=False,
            allow_unicode=True,
            line_break="\n",
            encoding="utf-8",
            sort_keys=False,
        )
    with open("clash_remarks", "w", encoding="utf-8", newline="\n") as f:
        for p in conf["proxies"]:
            f.write("  - " + p["name"] + "\n")

if "surge" in sys.argv[1]:
    with open(sys.argv[1], "r", encoding="utf-8") as f:
        lines = f.readlines()
    lines.sort(key=level, reverse=True)
    with open("surge_sorted.list", "w", encoding="utf-8", newline="\n") as f:
        for l in lines:
            f.write(l)
    with open("surge_remarks", "w", encoding="utf-8", newline="\n") as f:
        for l in lines:
            f.write("," + re.match(r"^(.*?) =", l).group(1))
        f.write("\n")
