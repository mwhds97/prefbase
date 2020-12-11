function filter(node) {
	const info = JSON.parse(node.ProxyInfo);
	if(info.Remark.toLowerCase().includes("iepl") || info.Remark.toLowerCase().includes("iplc") || info.Remark.toLowerCase().includes("bgp") || info.Remark.toLowerCase().includes("aga") || info.Remark.toLowerCase().includes("game")) {
		if(info.Type.toLowerCase() == "ss") {
			return true;
		}
		return false;
	}
	else {
		if(info.Type.toLowerCase() == "trojan") {
			return true;
		}
		return false;
	}
}