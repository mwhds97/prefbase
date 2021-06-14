function filter(node) {
  const remark = node.Remark.toLowerCase();
  const proto = node.Type;
  if(/ (cc|iepl|aia|aga|gamer)/.test(remark)) {
    return proto == 1;
  }
  else {
    return proto == 4;
  }
}
