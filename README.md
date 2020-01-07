1、shadowsocks服务商有非常多，自己也可以在国外购买服务器搭建使用，不过自己的服务器一旦被限流就没法用了，所以还是选择能提供稳定服务的提供商比较好。

2、我用了一年多服务一直稳定的服务商：https://order.shadowsocks.nl/aff.php?aff=16443 按步骤购买就可以，实际使用时并不会出现不同设备不能同时在线的情况，youtube可以看720p视频和直播，差不多10RMB/m很合算。
   购买完成后在—产品服务-我的服务—里就可以看到shadowsocks服务器的配置文件和二维码了。

3、windows使用：
      https://github.com/shadowsocks/shadowsocks-windows/releases 下载Shadowsocks.zip 客户端，解压，不需要安装。
      在—产品服务-我的服务—下载配置文件，放在和shadowsocks.exe同一个目录下，再打开shadowsocks.exe 就可以使用了。

4、mac OS使用：
      https://github.com/shadowsocks/ShadowsocksX-NG/releases 下载ShadowsocksX-NG.app.zip客户端，解压(safari下载会自动解压)，拖到—应用程序—里就算安装上了。
      打开shadowsocks，点击屏幕上侧的小图标，选择从屏幕中扫描二维码，在—产品服务-我的服务—里打开二维码链接，将一个个的配置导入完成就可以使用了。

5、IOS使用：
      大陆的Apple Store下架了所有shadowsocks客户端，所以需要使用其他地区的Apple ID下载ShadowRocket（通常来说所有的shadowsocks客户端都可以用，我用的是这个），同样是扫描二维码导入配置就可以用了。
     (非大陆区的Apple ID不太好注册，需要使用那个地区的信用卡，如果有在国外的朋友让TA帮忙注册一个吧。)

6、Android使用：
      https://github.com/shadowsocks/shadowsocks-android/releases 下载shadowsocks--universal.apk文件安装，后面同样是扫描二维码导入即可。
      
7、Centos、ubuntu使用：
      另两个文件是写好的安装/导入配置/运行 sh文件，修改后使用即可。

8、不同模式使用方法：
      PAC模式是只有指定网站会使用代理，其他常用网站不使用代理，通常使用这个模式。
      全局模式是所有服务都使用代理，不论是哪个网站，通常在PAC打不开的情况下可以尝试使用。
      Windows客户端有高可用和负载均衡模式，通常选择高可用就可以。
      其他客户端一个时间只能使用一个节点，通常来说日本节点>香港节点>美国节点>俄国节点，在—产品服务-我的服务—里可以看到不同费率，费率越高说明节点越好，IOS客户端也可以测试延迟，延迟越低说明节点越好。
      
      

