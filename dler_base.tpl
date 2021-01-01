{% if request.target == "clash" or request.target == "clashr" %}

mixed-port: 7890
port: 7891
socks-port: 7892
allow-lan: false
mode: rule
log-level: info
external-controller: 127.0.0.1:6170
secret: ''
ipv6: true

proxies: ~

proxy-groups: ~

rule-providers:
  Spam:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Reject.yaml
    path: ./Rules/Spam
    interval: 86400
  Netflix:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Media/Netflix.yaml
    path: ./Rules/Media/Netflix
    interval: 86400
  Spotify:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Media/Spotify.yaml
    path: ./Rules/Media/Spotify
    interval: 86400
  YouTube:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Media/YouTube.yaml
    path: ./Rules/Media/YouTube
    interval: 86400
  Bilibili:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Media/Bilibili.yaml
    path: ./Rules/Media/Bilibili
    interval: 86400
  iQiyi:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Media/iQiyi.yaml
    path: ./Rules/Media/iQiyi
    interval: 86400
  Letv:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Media/Letv.yaml
    path: ./Rules/Media/Letv
    interval: 86400
  Netease Music:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Media/Netease%20Music.yaml
    path: ./Rules/Media/Netease_Music
    interval: 86400
  Tencent Video:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Media/Tencent%20Video.yaml
    path: ./Rules/Media/Tencent_Video
    interval: 86400
  Youku:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Media/Youku.yaml
    path: ./Rules/Media/Youku
    interval: 86400
  ABC:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Media/ABC.yaml
    path: ./Rules/Media/ABC
    interval: 86400
  Abema TV:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Media/Abema%20TV.yaml
    path: ./Rules/Media/Abema_TV
    interval: 86400
  Amazon:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Media/Amazon.yaml
    path: ./Rules/Media/Amazon
    interval: 86400
  Apple News:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Media/Apple%20News.yaml
    path: ./Rules/Media/Apple_News
    interval: 86400
  Apple TV:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Media/Apple%20TV.yaml
    path: ./Rules/Media/Apple_TV
    interval: 86400
  Bahamut:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Media/Bahamut.yaml
    path: ./Rules/Media/Bahamut
    interval: 86400
  BBC iPlayer:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Media/BBC%20iPlayer.yaml
    path: ./Rules/Media/BBC_iPlayer
    interval: 86400
  DAZN:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Media/DAZN.yaml
    path: ./Rules/Media/DAZN
    interval: 86400
  Disney Plus:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Media/Disney%20Plus.yaml
    path: ./Rules/Media/Disney_Plus
    interval: 86400
  encoreTVB:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Media/encoreTVB.yaml
    path: ./Rules/Media/encoreTVB
    interval: 86400
  Fox Now:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Media/Fox%20Now.yaml
    path: ./Rules/Media/Fox_Now
    interval: 86400
  Fox+:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Media/Fox%2B.yaml
    path: ./Rules/Media/Fox+
    interval: 86400
  HBO:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Media/HBO.yaml
    path: ./Rules/Media/HBO
    interval: 86400
  Hulu Japan:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Media/Hulu%20Japan.yaml
    path: ./Rules/Media/Hulu_Japan
    interval: 86400
  Hulu:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Media/Hulu.yaml
    path: ./Rules/Media/Hulu
    interval: 86400
  Japonx:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Media/Japonx.yaml
    path: ./Rules/Media/Japonx
    interval: 86400
  JOOX:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Media/JOOX.yaml
    path: ./Rules/Media/JOOX
    interval: 86400
  KKBOX:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Media/KKBOX.yaml
    path: ./Rules/Media/KKBOX
    interval: 86400
  KKTV:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Media/KKTV.yaml
    path: ./Rules/Media/KKTV
    interval: 86400
  Line TV:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Media/Line%20TV.yaml
    path: ./Rules/Media/Line_TV
    interval: 86400
  myTV SUPER:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Media/myTV%20SUPER.yaml
    path: ./Rules/Media/myTV_SUPER
    interval: 86400
  Pandora:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Media/Pandora.yaml
    path: ./Rules/Media/Pandora
    interval: 86400
  PBS:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Media/PBS.yaml
    path: ./Rules/Media/PBS
    interval: 86400
  Pornhub:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Media/Pornhub.yaml
    path: ./Rules/Media/Pornhub
    interval: 86400
  Soundcloud:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Media/Soundcloud.yaml
    path: ./Rules/Media/Soundcloud
    interval: 86400
  ViuTV:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Media/ViuTV.yaml
    path: ./Rules/Media/ViuTV
    interval: 86400
  Telegram:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Telegram.yaml
    path: ./Rules/Telegram
    interval: 86400
  Steam:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Steam.yaml
    path: ./Rules/Steam
    interval: 86400
  Speedtest:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Speedtest.yaml
    path: ./Rules/Speedtest
    interval: 86400
  PayPal:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/PayPal.yaml
    path: ./Rules/PayPal
    interval: 86400
  Microsoft:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Microsoft.yaml
    path: ./Rules/Microsoft
    interval: 86400
  TopBlocked:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Proxy.yaml
    path: ./Rules/TopBlocked
    interval: 86400
  Domestic:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Domestic.yaml
    path: ./Rules/Domestic
    interval: 86400
  Apple:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Apple.yaml
    path: ./Rules/Apple
    interval: 86400
  PTtracker:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/mwhds97/prefbase@master/ruleset/clash/PTtracker.yaml
    path: ./Rules/PTtracker
    interval: 86400
  PTsite:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/mwhds97/prefbase@master/ruleset/clash/PTsite.yaml
    path: ./Rules/PTsite
    interval: 86400
  Downloader:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/mwhds97/prefbase@master/ruleset/clash/Downloader.yaml
    path: ./Rules/Downloader
    interval: 86400
  Special:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/mwhds97/prefbase@master/ruleset/clash/Special.yaml
    path: ./Rules/Special
    interval: 86400
  LAN:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/LAN.yaml
    path: ./Rules/LAN
    interval: 86400

rules:
- RULE-SET,Spam,Spam
- RULE-SET,Special,Special
- RULE-SET,PTtracker,PTtracker
- RULE-SET,PTsite,PTsite
- RULE-SET,Netflix,Netflix
- RULE-SET,Spotify,Spotify
- RULE-SET,YouTube,YouTube
- RULE-SET,Bilibili,DomesticTV
- RULE-SET,iQiyi,DomesticTV
- RULE-SET,Letv,DomesticTV
- RULE-SET,Netease Music,DomesticTV
- RULE-SET,Tencent Video,DomesticTV
- RULE-SET,Youku,DomesticTV
- RULE-SET,ABC,GlobalTV
- RULE-SET,Abema TV,GlobalTV
- RULE-SET,Amazon,GlobalTV
- RULE-SET,Apple News,GlobalTV
- RULE-SET,Apple TV,GlobalTV
- RULE-SET,Bahamut,GlobalTV
- RULE-SET,BBC iPlayer,GlobalTV
- RULE-SET,DAZN,GlobalTV
- RULE-SET,Disney Plus,GlobalTV
- RULE-SET,encoreTVB,GlobalTV
- RULE-SET,Fox Now,GlobalTV
- RULE-SET,Fox+,GlobalTV
- RULE-SET,HBO,GlobalTV
- RULE-SET,Hulu Japan,GlobalTV
- RULE-SET,Hulu,GlobalTV
- RULE-SET,Japonx,GlobalTV
- RULE-SET,JOOX,GlobalTV
- RULE-SET,KKBOX,GlobalTV
- RULE-SET,KKTV,GlobalTV
- RULE-SET,Line TV,GlobalTV
- RULE-SET,myTV SUPER,GlobalTV
- RULE-SET,Pandora,GlobalTV
- RULE-SET,PBS,GlobalTV
- RULE-SET,Pornhub,GlobalTV
- RULE-SET,Soundcloud,GlobalTV
- RULE-SET,ViuTV,GlobalTV
- RULE-SET,Telegram,Telegram
- RULE-SET,Steam,Steam
- RULE-SET,Speedtest,Speedtest
- RULE-SET,PayPal,PayPal
- RULE-SET,Microsoft,Microsoft
- RULE-SET,TopBlocked,TopBlocked
- RULE-SET,Apple,Apple
- PROCESS-NAME,uedit64.exe,REJECT
- RULE-SET,Domestic,Domestic
- RULE-SET,LAN,DIRECT
- GEOIP,CN,Domestic
- RULE-SET,Downloader,Downloader
- MATCH,Others

{% endif %}
{% if request.target == "surge" %}

[General]
bypass-system = true
skip-proxy = 127.0.0.1, 192.168.0.0/16, 10.0.0.0/8, 172.16.0.0/12, 100.64.0.0/10, 17.0.0.0/8, localhost, *.local, 169.254.0.0/16, 224.0.0.0/4, 240.0.0.0/4
dns-server = system
loglevel = notify
replica = false
ipv6 = false
show-error-page-for-reject = true
exclude-simple-hostnames = true
always-real-ip = msftconnecttest.com, msftncsi.com, *.msftconnecttest.com, *.msftncsi.com, *.srv.nintendo.net, *.stun.playstation.net, xbox.*.microsoft.com, *.xboxlive.com, *.battlenet.com.cn, *.battlenet.com, *.blzstatic.cn
hijack-dns = 8.8.8.8:53, 8.8.4.4:53
internet-test-url = http://wifi.vivo.com.cn/generate_204
proxy-test-url = http://www.gstatic.com/generate_204
enhanced-mode-by-rule = false

[Proxy]

[Proxy Group]

[Rule]
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Reject.list,Spam
RULE-SET,https://cdn.jsdelivr.net/gh/mwhds97/prefbase@master/ruleset/surge/Special.list,Special
RULE-SET,https://cdn.jsdelivr.net/gh/mwhds97/prefbase@master/ruleset/surge/PTtracker.list,PTtracker
RULE-SET,https://cdn.jsdelivr.net/gh/mwhds97/prefbase@master/ruleset/surge/PTsite.list,PTsite
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/Netflix.list,Netflix
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/Spotify.list,Spotify
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/YouTube%20Music.list,YouTube
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/YouTube.list,YouTube
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/Bilibili.list,DomesticTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/iQiyi.list,DomesticTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/Letv.list,DomesticTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/MOO.list,DomesticTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/Netease%20Music.list,DomesticTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/Tencent%20Video.list,DomesticTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/Youku.list,DomesticTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/ABC.list,GlobalTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/Abema%20TV.list,GlobalTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/Amazon.list,GlobalTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/Apple%20News.list,GlobalTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/Apple%20TV.list,GlobalTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/Bahamut.list,GlobalTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/BBC%20iPlayer.list,GlobalTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/DAZN.list,GlobalTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/Disney%20Plus.list,GlobalTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/encoreTVB.list,GlobalTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/Fox%20Now.list,GlobalTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/Fox%2B.list,GlobalTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/HBO.list,GlobalTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/Hulu%20Japan.list,GlobalTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/Hulu.list,GlobalTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/Japonx.list,GlobalTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/JOOX.list,GlobalTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/KKBOX.list,GlobalTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/KKTV.list,GlobalTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/Line%20TV.list,GlobalTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/myTV%20SUPER.list,GlobalTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/Pandora.list,GlobalTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/PBS.list,GlobalTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/Pornhub.list,GlobalTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/Soundcloud.list,GlobalTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/ViuTV.list,GlobalTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Telegram.list,Telegram
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Steam.list,Steam
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Speedtest.list,Speedtest
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/PayPal.list,PayPal
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Microsoft.list,Microsoft
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Proxy.list,TopBlocked
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Apple.list,Apple
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Domestic.list,Domestic
RULE-SET,LAN,DIRECT
GEOIP,CN,Domestic
RULE-SET,https://cdn.jsdelivr.net/gh/mwhds97/prefbase@master/ruleset/surge/Downloader.list,Downloader
FINAL,Others,dns-failed

[Host]
ip6-localhost = ::1
ip6-loopback = ::1

[MITM]
tcp-connection = false
skip-server-cert-verify = true
ca-p12 = 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
ca-passphrase = DlerCloud

{% endif %}
