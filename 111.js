ssid = $network.wifi.ssid;
if(typeof (ssid) != "undefined" && ssid.toLowerCase().includes("sany")) {
  $surge.setSelectGroupPolicy("Domestic", "Proxy");
  $surge.setSelectGroupPolicy("DomesticTV", "Proxy");
}
else {
  $surge.setSelectGroupPolicy("Domestic", "DIRECT");
  $surge.setSelectGroupPolicy("DomesticTV", "DIRECT");
}
$done();
