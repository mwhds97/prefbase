function filter(node) {
  const remark = JSON.parse(node.ProxyInfo).Remark.toLowerCase();
  const proto = JSON.parse(node.ProxyInfo).Type.toLowerCase();
  if(remark.includes("cen") || remark.includes("iepl") || remark.includes("aga") || remark.includes("game")) {
    return proto == "ss";
  }
  else {
    return proto == "trojan";
  }
}
