# create shadowsocks.json
cat >> /opt/shadowsocks.json << EOF
{
    "server":"servername",
    "server_port":40414,
    "local_address": "127.0.0.1",
    "local_port":1080,
    "password":"password",
    "timeout":300,
    "method":"chacha20-ietf-poly1305",
    "fast_open": false,
    "workers": 1
}
EOF
# install shadowsocks-libev
yum install epel-release -y
yum install gcc wget gettext autoconf libtool automake make pcre-devel asciidoc xmlto c-ares-devel libev-devel libsodium-devel mbedtls-devel -y
yum update -y
cd /etc/yum.repos.d/
wget https://copr.fedoraproject.org/coprs/librehat/shadowsocks/repo/epel-7/librehat-shadowsocks-epel-7.repo
yum install shadowsocks-libev -y
systemctl enable shadowsocks-libev
systemctl start shadowsocks-libev
# install privoxy
cd /opt
wget http://www.privoxy.org/sf-download-mirror/Sources/3.0.26%20%28stable%29/privoxy-3.0.26-stable-src.tar.gz
tar -xzvf privoxy-3.0.26-stable-src.tar.gz
cd /opt/privoxy-3.0.26-stable
useradd privoxy
autoheader && autoconf
./configure
make && make install
sed '1337aforward-socks5t / 127.0.0.1:1080 .' -i /usr/local/etc/privoxy/config
privoxy --user privoxy /usr/local/etc/privoxy/config
sed "1aexport https_proxy=http://127.0.0.1:8118" -i /etc/profile
sed "1aexport http_proxy=http://127.0.0.1:8118" -i /etc/profile
source /etc/profile
# start 
nohup ss-local -c /opt/shadowsocks.json /dev/null 2>&1 &
