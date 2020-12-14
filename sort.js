function compare(node_a, node_b) {
	var level_a = 0;
	var level_b = 0;
	const remark_a = JSON.parse(node_a.ProxyInfo).Remark.toLowerCase();
	const remark_b = JSON.parse(node_b.ProxyInfo).Remark.toLowerCase();
	var levels = {"cen+":12, "cen-":6, "cen":11, "ctm+":10, "ctm-":5, "ctm":9, "iepl+":8, "iepl-":4, "iepl":7, "bgp":3, "aga":2, "gia":1};
	for(level in levels) {
		if(remark_a.includes(level)) {
			level_a = levels[level];
			break;
		}
	}
	for(level in levels) {
		if(remark_b.includes(level)) {
			level_b = levels[level];
			break;
		}
	}
	return level_a > level_b;
}
