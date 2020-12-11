function compare(node_a, node_b) {
	var level_a = 0;
	var level_b = 0;
	const remark_a = JSON.parse(node_a.ProxyInfo).Remark.toLowerCase();
	const remark_b = JSON.parse(node_b.ProxyInfo).Remark.toLowerCase();
	var levels = {"iepl+":12,"iepl-":10,"iepl":11,"ctm+":9,"ctm-":7,"ctm":8,"iplc+":6,"iplc-":4,"iplc":5,"bgp":3,"aga":2,"gia":1};
	for(level in levels){
		if(remark_a.includes(level)){
			level_a = levels[level];
			break;
		}
	}
	for(level in levels){
		if(remark_b.includes(level)){
			level_b = levels[level];
			break;
		}
	}
	return level_a > level_b;
}