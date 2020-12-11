function compare(node_a, node_b) {
	var level_a = 0;
	var level_b = 0;
	const info_a = JSON.parse(node_a.ProxyInfo);
	const info_b = JSON.parse(node_b.ProxyInfo);
	if(info_a.Remark.toLowerCase().includes("iepl+")) {
		level_a = 12;
	}
	else if(info_a.Remark.toLowerCase().includes("iepl-")) {
		level_a = 10;
	}
	else if(info_a.Remark.toLowerCase().includes("iepl")) {
		level_a = 11;
	}
	else if(info_a.Remark.toLowerCase().includes("ctm+")) {
		level_a = 9;
	}
	else if(info_a.Remark.toLowerCase().includes("ctm-")) {
		level_a = 7;
	}
	else if(info_a.Remark.toLowerCase().includes("ctm")) {
		level_a = 8;
	}
	else if(info_a.Remark.toLowerCase().includes("iplc+")) {
		level_a = 6;
	}
	else if(info_a.Remark.toLowerCase().includes("iplc-")) {
		level_a = 4;
	}
	else if(info_a.Remark.toLowerCase().includes("iplc")) {
		level_a = 5;
	}
	else if(info_a.Remark.toLowerCase().includes("bgp")) {
		level_a = 3;
	}
	else if(info_a.Remark.toLowerCase().includes("aga")) {
		level_a = 2;
	}
	else if(info_a.Remark.toLowerCase().includes("gia")) {
		level_a = 1;
	}
	else {
		level_a = 0;
	}
	if(info_b.Remark.toLowerCase().includes("iepl+")) {
		level_b = 12;
	}
	else if(info_b.Remark.toLowerCase().includes("iepl-")) {
		level_b = 10;
	}
	else if(info_b.Remark.toLowerCase().includes("iepl")) {
		level_b = 11;
	}
	else if(info_b.Remark.toLowerCase().includes("ctm+")) {
		level_b = 9;
	}
	else if(info_b.Remark.toLowerCase().includes("ctm-")) {
		level_b = 7;
	}
	else if(info_b.Remark.toLowerCase().includes("ctm")) {
		level_b = 8;
	}
	else if(info_b.Remark.toLowerCase().includes("iplc+")) {
		level_b = 6;
	}
	else if(info_b.Remark.toLowerCase().includes("iplc-")) {
		level_b = 4;
	}
	else if(info_b.Remark.toLowerCase().includes("iplc")) {
		level_b = 5;
	}
	else if(info_b.Remark.toLowerCase().includes("bgp")) {
		level_b = 3;
	}
	else if(info_b.Remark.toLowerCase().includes("aga")) {
		level_b = 2;
	}
	else if(info_b.Remark.toLowerCase().includes("gia")) {
		level_b = 1;
	}
	else {
		level_b = 0;
	}
	return level_a > level_b;
}
