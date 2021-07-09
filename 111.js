if($network.wifi.ssid == "mSany") {
  $surge.setSelectGroupPolicy("Domestic", "Proxy");
  $surge.setSelectGroupPolicy("DomesticTV", "Proxy");
}
else {
  $surge.setSelectGroupPolicy("Domestic", "DIRECT");
  $surge.setSelectGroupPolicy("DomesticTV", "DIRECT");
}
$done();
