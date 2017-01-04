note
====


好文章
--------------
* [亞馬遜CEO 傑夫．貝佐斯：選擇，比天賦更重要][44]
 * 有一天你會明白，善良比聰明更難
 * 你們要做憤世嫉俗者，還是踏實的建設者？
* [Being A Developer After 40 (如何在四十歲後繼續從事軟體開發)][22]
* [語意化版本 2.0.0][23]

```
* API版本定義 (X.Y.Z)
 * 初始版本(0.1.0)
 * 主版號(X)：當你做了不相容的 API 修改，
 * 次版號(Y)：當你做了向下相容的功能性新增，
 * 修訂號(Z)：當你做了向下相容的問題修正。
 * 每當主版號遞增時，次版號和修訂號「必須 MUST」歸零。 1.0.0 < 1.1.0 < 2.0.0 < 2.1.0
```
 * [物件導向程式設計：為何說composition優於inheritance？][36]
  * 每個類別的代碼保持在500行內
  * 在當我們要了解其中一個類別，就必須了解它們全部
 * [程式員求生指南：關於寫程式的二三事][37]
 * [科技如何劫持人們的心智][38]
 * [漫談 - 軟體開發見聞錄][48]
 * [如何自學深度學習技術並進階成專家][49]

Blog 學習
--------
* [vakila](http://vakila.github.io/)
 * [resume](http://vakila.github.io/resume/)
* [ihower](https://ihower.tw/)
 * [軟體開發 Software Development](https://ihower.tw/blog/posts)


linux學習
--------------
* [linux高级编程必读书][53]
* [linux系统编程经典书籍][54]
* [编程书籍][55]

網路資源
--------------
* [DevDocs combines multiple API documentations in a fast](http://devdocs.io/)
 * [JavaScript](http://devdocs.io/javascript/)
* [TV Show Transcripts][20]
 * [The Walking Dead][21]
* 好工具
 * [TCPView v3.05][29]

GitHub 資源
--------------
* [C 语言资源大全中文版][11]
* [codecademy-線上程式學習網站][19]
* [中文文案排版指北][39]

目前使用手冊
--------------
* [Node.js v0.10.41 Manual & Documentation][4]
* [Beej's Guide to Network Programming 正體中文版][28]

OpenWrt
-------------
* [U-Boot 1.1.4 modification for routers][17]
* [OpenWRT之 netifd - 概述][50]
* [ubus (OpenWrt micro bus 架构)][51]


library -1
--------------
* [libuv][6]
	* [libuv 与 libev 的对比][10]
* libuv example
 * [利用libuv编写异步多线程的addon实例][24]
 * [uvbook中文][25]
 * [An Introduction to libuv][26]
 * [Simple example webserver using libuv and lua][27]

* SQLite
	* [Research and Application of SQLite Embedded Database Based on ARM-Linux ][7]
	* [sqlite - How To Compile][8]
	* [SQLite-麻雀雖小五臟俱全][9]
* [libATA Developer's Guide][46]	
 * [How to configure and use libata SATA / PATA drivers][47]

tools -1
--------------
* crosstool-NG
	* [使用 crosstool-NG 產生 toolchain][1]
	* [Crosstool-ng製作交叉編譯工具鏈][2]
* Valgrind
	* [嵌入式 嵌入式工程师必备软件Valgrind][3]
* ttysnoop
	* [ttysnoop][5]
* QEMU
	* [Compile Linux, BusyBox for ARM and load it using QEMU][12]
* 影像處理
	* [OpenALPR is an open source Automatic License Plate Recognition library][13]
	* [De-Interlacing and YUV 4:2:2 to 4:2:0 Conversion on TMS320DM6446 Using the Resizer][52]	

* 其它
	* [NTP, UTC, and Working with Time on Linux][14]
	* [Sources for Time Zone and Daylight Saving Time Data][15]
	* [POSIX線程(pthread)入門文章分享][16]
	* [Dell Latitude D410 手提電腦Type Y6142 鋰離子充電池組電路板拆解][18]

3D printer
-------------
* 自制3d printer
 * [Prusa i3 Build Manual][33]
 * [Constructing a 3D Printer [Prusa I3]][34]
 * [This is Prusa iteration 3][35]
 * [Building a Prusa i3 printer - Wood box frame ][30]
 * [3D printer parts reprap mendel prusa I3 laser cut frame wooden in 6mm plywood free shipping][31]
 * [3D Printers Reprap Mendel Prusa I3 linden wood frame housing an upgraded version of 6mm][32]
	
電子電路
-------------
* 射頻電子
 * [第一章 知識回顧與通訊系統簡介][40]
 * [第三章 史密斯圖與阻抗匹配][42]
 * [第六章 低雜訊放大器設計][41]
* 设计指南
 * [阻抗匹配与史密斯(Smith)圆图：基本原理][43]
 
其它
------------- 
* [Flightradar24.com - Live flight tracker!][45]

[1]:http://shyuanliang.blogspot.tw/2013/08/crosstool-ng-toolchain.html
[2]:http://wiki.ubuntu.org.cn/Crosstool-ng%E5%88%B6%E4%BD%9C%E4%BA%A4%E5%8F%89%E7%BC%96%E8%AF%91%E5%B7%A5%E5%85%B7%E9%93%BE
[3]:http://blog.csdn.net/mantis_1984/article/details/22372207
[4]:https://nodejs.org/docs/latest-v0.10.x/api/http.html
[5]:http://linux.die.net/man/8/ttysnoop
[6]:https://github.com/libuv/libuv
[7]:http://www.wseas.us/e-library/conferences/2009/ningbo/CD-CISST/CISST15.pdf
[8]:http://www.sqlite.org/cvstrac/wiki?p=HowToCompile
[9]:http://daydreamer.idv.tw/rewrite.php/read-33.html
[10]:http://ju.outofmemory.cn/entry/62187
[11]:https://github.com/jobbole/awesome-c-cn#networking-and-internet
[12]:https://github.com/surajx/qemu-arm-linux
[13]:https://github.com/openalpr/openalpr
[14]:http://souptonuts.sourceforge.net/README_Working_With_Time.html
[15]:http://www.twinsun.com/tz/tz-link.htm
[16]:http://dragonspring.pixnet.net/blog/post/32963482-posix%E7%B7%9A%E7%A8%8B(pthread)%E5%85%A5%E9%96%80%E6%96%87%E7%AB%A0%E5%88%86%E4%BA%AB
[17]:https://github.com/pepe2k/u-boot_mod
[18]:http://bugworkshop.blogspot.tw/2016/01/dell-latitude-d410-type-y6142_6.html
[19]:https://www.codecademy.com/learn/all
[20]:http://transcripts.foreverdreaming.org/index.php?sid=46df92464bd81762b3cac4a85eca1264
[21]:http://transcripts.foreverdreaming.org/viewforum.php?f=15
[22]:http://www.evanlin.com/developer-after-40/
[23]:http://semver.org/lang/zh-TW/
[24]:http://snoopyxdy.blog.163.com/blog/static/601174402013422103614385/
[25]:http://www.nowx.org/uvbook/index.html
[26]:https://nikhilm.github.io/uvbook/
[27]:https://github.com/erikdubbelboer/libuv-lua-http-server
[28]:http://beej-zhtw.netdpi.net/
[29]:https://technet.microsoft.com/en-us/sysinternals/bb897437
[30]:www.dragonflydiy.com/2010/10/building-prusa-i3-printer-wood-box-frame.html
[31]:http://www.aliexpress.com/store/product/3D-printer-parts-reprap-mendel-prusa-I3-laser-cut-frame-wooden-in-6mm-plywood-free-shipping/1045356_32221331833.html
[32]:http://www.aliexpress.com/item/3D-Printers-Reprap-Mendel-Prusa-I3-linden-wood-frame-housing-an-upgraded-version-of-6mm/2035074052.html
[33]:http://reprap.org/wiki/Prusa_i3_Build_Manual
[34]:http://www.trustfm.net/hardware/3DPrinter.php?page=Frame2
[35]:https://github.com/josefprusa/Prusa3
[36]:https://tw.twincl.com/programming/*662v
[37]:https://tw.twincl.com/programming/*652e
[38]:https://tw.twincl.com/science/*652p
[39]:https://github.com/sparanoid/chinese-copywriting-guidelines

[40]:http://www.slideshare.net/simenli/ch1-49340800
[41]:http://www.slideshare.net/simenli/ch6-49340807
[42]:http://www.slideshare.net/simenli/ch3-49340803
[43]:https://www.maximintegrated.com/cn/app-notes/index.mvp/id/742
[44]:http://www.cheers.com.tw/article/article.action?id=5063792

[45]:https://www.flightradar24.com/23.42,120.25/8
[46]:https://www.kernel.org/doc/htmldocs/libata/index.html
[47]:https://www.kernel.org/doc/htmldocs/libata/index.html

[48]:https://www.gitbook.com/book/ericyeh92094/self-reflection-and-insight-for-s-w-engineering/details
[49]:http://bangqu.com/gpu/blog/5145
[50]:https://github.com/beacer/notes/blob/master/netifd/netifd-objects.md
[51]:https://wiki.openwrt.org/zh-cn/doc/techref/ubus

[52]:http://www.ti.com/lit/an/spraak3b/spraak3b.pdf
[53]:http://doc.xuehai.net/b8821219ae6992219f78bb631.html
[54]:http://doc.xuehai.net/b0e54785d36dedef847ba805a.html
[55]:http://doc.xuehai.net/b8e65c93b05b1028a6325cd0d.html
