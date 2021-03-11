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
    behavior: domain
    url: https://cdn.jsdelivr.net/gh/privacy-protection-tools/anti-AD@master/anti-ad-clash.yaml
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
  WeTV:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Media/WeTV.yaml
    path: ./Rules/Media/WeTV
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
  Discovery Plus:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Media/Discovery%20Plus.yaml
    path: ./Rules/Media/Discovery_Plus
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
  Scholar:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Clash/Provider/Scholar.yaml
    path: ./Rules/Scholar
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
  Blizzard:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/mwhds97/prefbase@master/ruleset/clash/Blizzard.yaml
    path: ./Rules/Blizzard
    interval: 86400
#  Downloader:
#    type: http
#    behavior: classical
#    url: https://cdn.jsdelivr.net/gh/mwhds97/prefbase@master/ruleset/clash/Downloader.yaml
#    path: ./Rules/Downloader
#    interval: 86400
  Crack:
    type: http
    behavior: classical
    url: https://cdn.jsdelivr.net/gh/mwhds97/prefbase@master/ruleset/clash/Crack.yaml
    path: ./Rules/Crack
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
- RULE-SET,Crack,Crack
- RULE-SET,Spam,Spam
- RULE-SET,Special,Special
#- RULE-SET,Downloader,Downloader
- RULE-SET,PTtracker,PTtracker
- RULE-SET,PTsite,PTsite
- RULE-SET,Netflix,Netflix
- RULE-SET,Spotify,Spotify
- RULE-SET,YouTube,YouTube
- RULE-SET,Disney Plus,Disney
- RULE-SET,Bilibili,DomesticTV
- RULE-SET,iQiyi,DomesticTV
- RULE-SET,Letv,DomesticTV
- RULE-SET,Netease Music,DomesticTV
- RULE-SET,Tencent Video,DomesticTV
- RULE-SET,Youku,DomesticTV
- RULE-SET,WeTV,DomesticTV
- RULE-SET,ABC,GlobalTV
- RULE-SET,Abema TV,GlobalTV
- RULE-SET,Amazon,GlobalTV
- RULE-SET,Apple News,GlobalTV
- RULE-SET,Apple TV,GlobalTV
- RULE-SET,Bahamut,GlobalTV
- RULE-SET,BBC iPlayer,GlobalTV
- RULE-SET,DAZN,GlobalTV
- RULE-SET,Discovery Plus,GlobalTV
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
- RULE-SET,Blizzard,Blizzard
- RULE-SET,Speedtest,Speedtest
- RULE-SET,PayPal,PayPal
- RULE-SET,Microsoft,Microsoft
- RULE-SET,TopBlocked,TopBlocked
- RULE-SET,Apple,Apple
- RULE-SET,Scholar,Scholar
- RULE-SET,Domestic,Domestic
- RULE-SET,LAN,DIRECT
- GEOIP,CN,Domestic
- MATCH,Others

script:
  code: |
    def main(ctx, metadata):
      port_list = [21, 22, 23, 53, 80, 123, 143, 194, 443, 465, 587, 853, 993, 995, 998, 2052, 2053, 2082, 2083, 2086, 2095, 2096, 5222, 5228, 5229, 5230, 8080, 8443, 8880, 8888, 8889]
      ruleset_action = {
        "Crack": "Crack",
        "Spam": "Spam",
        "Special": "Special",
        #"Downloader": "Downloader",
        "PTtracker": "PTtracker",
        "PTsite": "PTsite",
        "Netflix": "Netflix",
        "Spotify": "Spotify",
        "YouTube": "YouTube",
        "Disney Plus": "Disney",
        "Bilibili": "DomesticTV",
        "iQiyi": "DomesticTV",
        "Letv": "DomesticTV",
        "Netease Music": "DomesticTV",
        "Tencent Video": "DomesticTV",
        "Youku": "DomesticTV",
        "WeTV": "DomesticTV",
        "ABC": "GlobalTV",
        "Abema TV": "GlobalTV",
        "Amazon": "GlobalTV",
        "Apple News": "GlobalTV",
        "Apple TV": "GlobalTV",
        "Bahamut": "GlobalTV",
        "BBC iPlayer": "GlobalTV",
        "DAZN": "GlobalTV",
        "Discovery Plus": "GlobalTV",
        "encoreTVB": "GlobalTV",
        "Fox Now": "GlobalTV",
        "Fox+": "GlobalTV",
        "HBO": "GlobalTV",
        "Hulu Japan": "GlobalTV",
        "Hulu": "GlobalTV",
        "Japonx": "GlobalTV",
        "JOOX": "GlobalTV",
        "KKBOX": "GlobalTV",
        "KKTV": "GlobalTV",
        "Line TV": "GlobalTV",
        "myTV SUPER": "GlobalTV",
        "Pandora": "GlobalTV",
        "PBS": "GlobalTV",
        "Pornhub": "GlobalTV",
        "Soundcloud": "GlobalTV",
        "ViuTV": "GlobalTV",
        "Telegram": "Telegram",
        "Steam": "Steam",
        "Blizzard": "Blizzard",
        "Speedtest": "Speedtest",
        "PayPal": "PayPal",
        "Microsoft": "Microsoft",
        "TopBlocked": "TopBlocked",
        "Apple": "Apple",
        "Scholar": "Scholar",
        "Domestic": "Domestic",
        "LAN": "DIRECT"
      }
      port = int(metadata["dst_port"])
      if port not in port_list:
        return "DIRECT"
      for rule_name in ctx.rule_providers.keys():
        if ctx.rule_providers[rule_name].match(metadata):
          return ruleset_action[rule_name]
      ip = metadata["dst_ip"] or ctx.resolve_ip(metadata["host"])
      if ip == "":
        return "DIRECT"
      code = ctx.geoip(ip)
      if code == "CN":
        return "Domestic"
      return "Others"

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

[Proxy]

[Proxy Group]

[Rule]
RULE-SET,https://cdn.jsdelivr.net/gh/mwhds97/prefbase@master/ruleset/surge/Crack.list,Crack
DOMAIN-SET,https://cdn.jsdelivr.net/gh/privacy-protection-tools/anti-AD@master/anti-ad-surge2.txt,Spam
RULE-SET,https://cdn.jsdelivr.net/gh/mwhds97/prefbase@master/ruleset/surge/Special.list,Special
#RULE-SET,https://cdn.jsdelivr.net/gh/mwhds97/prefbase@master/ruleset/surge/Downloader.list,Downloader
RULE-SET,https://cdn.jsdelivr.net/gh/mwhds97/prefbase@master/ruleset/surge/PTtracker.list,PTtracker
RULE-SET,https://cdn.jsdelivr.net/gh/mwhds97/prefbase@master/ruleset/surge/PTsite.list,PTsite
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/Netflix.list,Netflix
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/Spotify.list,Spotify
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/Disney%20Plus.list,Disney
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/YouTube%20Music.list,YouTube
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/YouTube.list,YouTube
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/Bilibili.list,DomesticTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/iQiyi.list,DomesticTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/Letv.list,DomesticTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/MOO.list,DomesticTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/Netease%20Music.list,DomesticTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/Tencent%20Video.list,DomesticTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/Youku.list,DomesticTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/WeTV.list,DomesticTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/ABC.list,GlobalTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/Abema%20TV.list,GlobalTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/Amazon.list,GlobalTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/Apple%20News.list,GlobalTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/Apple%20TV.list,GlobalTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/Bahamut.list,GlobalTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/BBC%20iPlayer.list,GlobalTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/DAZN.list,GlobalTV
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Media/Discovery%20Plus.list,GlobalTV
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
RULE-SET,https://cdn.jsdelivr.net/gh/mwhds97/prefbase@master/ruleset/surge/Blizzard.list,Blizzard
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Speedtest.list,Speedtest
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/PayPal.list,PayPal
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Microsoft.list,Microsoft
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Proxy.list,TopBlocked
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Apple.list,Apple
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Scholar.list,Scholar
RULE-SET,https://cdn.jsdelivr.net/gh/lhie1/Rules@master/Surge/Surge%203/Provider/Domestic.list,Domestic
RULE-SET,LAN,DIRECT
GEOIP,CN,Domestic
FINAL,Others,dns-failed

[Host]
ip6-localhost = ::1
ip6-loopback = ::1

[MITM]
tcp-connection = false
skip-server-cert-verify = true
ca-passphrase = Dler
ca-p12 = MIIDGgIBAzCCAuAGCSqGSIb3DQEHAaCCAtEEggLNMIICyTCCAb8GCSqGSIb3DQEHBqCCAbAwggGsAgEAMIIBpQYJKoZIhvcNAQcBMBwGCiqGSIb3DQEMAQYwDgQI5e4W8st2yMMCAggAgIIBeBDhcB5oCpEtPyamF2QSSZMoKnIQ9idB7/spS4BgYMq/zDT8c7SDSKM746+4D98feqkJmAYFUWlXtXOHwSR8QlFad9dTYw4SulHDpDAVr/+da6iCX+LeQuducormCI6xVcmpfZ8qvHWzpfHy5mrKxkuyj5OHlehvYOedDZ9P9s9ME2qZFsffKC4kk398QPjoBMLCb73m7QcFdzdus7NuVAd/kYZRww7ODcXcb5a45Yv4NeRwRjnVT8eCgjGXjJXQgJPAtyAWPLW+o1uS132Qdkmg+8EjwuxL/lOu3rLKh0gWWUFHcxv2rg4OcezyoZuv70zs3A8Ju3wmQ6oZuakeRuRyKu6+9BtgOqxnoBwvTMCI4saY8E318DWZjBOzg9N2vPOhKDeoh8ES9TAbRlcp5Bnp5TWrPhae+XeHlHde5KCr3kjB15/DAhrlh7+ht18I/p1shnRKAd1tH6p62to51j9mSHNxOFFCbBPiFqBSnPmuV2SSOOYHcjUwggECBgkqhkiG9w0BBwGggfQEgfEwge4wgesGCyqGSIb3DQEMCgECoIG0MIGxMBwGCiqGSIb3DQEMAQMwDgQI/FfHqSBxFUoCAggABIGQIJa8eopsdqunR4ZwxWt/ThhdkRw2LFHTbgg5jWdAUQfK2b+I6+Wk9Dimdb2xGzAaYcAVt3ArbfuDTjDUTI4m3pzXBe/edyeXagr6i6DgM9TluB4OsG6hC/MFtF3rvqnCT3DGf5b48hSj0Y5OfJy+iFXmasxtwVIf4pFFylXOOJeJdQry1NgImb0nZwsS8NJAMSUwIwYJKoZIhvcNAQkVMRYEFHijHPCciGG5pbv+qBYZvjpHBIFnMDEwITAJBgUrDgMCGgUABBSxzZGBSpKB8R5FQ6wdiWxFka+xcgQIxB+kS2hfUpkCAggA

{% endif %}
