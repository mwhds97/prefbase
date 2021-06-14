function filter(node) {
  const remark = node.Remark.toLowerCase();
  const proto = node.Type;
  if(/ (cc|iepl|aga|gamer)/.test(remark)) {
    return proto == 1;
  }
  else {
    return proto == 4;
  }
}
