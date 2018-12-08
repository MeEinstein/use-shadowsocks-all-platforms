sudo apt-get install software-properties-common -y
sudo add-apt-repository ppa:max-c-lv/shadowsocks-libev -y
sudo apt-get update -y
sudo apt install shadowsocks-libev -y
systemctl start shadowsocks-libev
wget https://www.privoxy.org/sf-download-mirror/Debian/3.0.26%20%28stable%29%20jessie/privoxy_3.0.26-1_amd64.deb
dpkg -i privoxy_3.0.26-1_amd64.deb -y
cat >> /opt/shadowsocks.json << EOF
{
    "server":"jp1-sta31.bw4dl.space",
    "server_port":40414,
    "local_address": "127.0.0.1",
    "local_port":1080,
    "password":"yXHWJB4ZvUVG",
    "timeout":300,
    "method":"chacha20-ietf-poly1305",
    "fast_open": false,
    "workers": 1
}
EOF
sed '1337aforward-socks5t / 127.0.0.1:1080 .' -i /etc/privoxy/config
privoxy --user privoxy /etc/privoxy/config
sed "1aexport https_proxy=http://127.0.0.1:8118" -i /etc/profile
sed "1aexport http_proxy=http://127.0.0.1:8118" -i /etc/profile
source /etc/profile
nohup ss-local -c /opt/shadowsocks.json /dev/null 2>&1 &
