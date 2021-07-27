ssid = $network.wifi.ssid;
if(!(ssid === null) && ssid.toLowerCase().includes("jezoe")) {
  $surge.setSelectGroupPolicy("DomesticTV", "Proxy");
}
else {
  $surge.setSelectGroupPolicy("DomesticTV", "DIRECT");
}
$done();
