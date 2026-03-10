nmcli con add \
  type wifi \
  con-name eduroam \
  ssid eduroam \
  ipv4.method auto \
  802-1x.eap peap \
  802-1x.phase2-auth mschapv2 \
  802-1x.identity <username> \
  802-1x.password <password> \
  wifi-sec.key-mgmt wpa-eap
