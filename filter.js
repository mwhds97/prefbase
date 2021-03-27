function filter(node) {
  const remark = node.Remark.toLowerCase();
  const proto = node.Type;
  if(remark.includes(" cc") || remark.includes(" iepl") || remark.includes(" aga") || remark.includes(" game")) {
    return proto == 1;
  }
  else {
    return proto == 4;
  }
}
