
[LuaSocketShortRef20.pdf](http://www.capgo.com/Resources/SoftwareDev/LuaSocketShortRef20.pdf)

### LuaSocket

* [Network support for the Lua language ](http://w3.impa.br/~diego/software/luasocket/reference.html)
* [LuaSocket 初探](http://www.photoneray.com/luasocket/)

* 注意
    * receive函数 **默认是接收一行数据即返回**，判断条件为接收的字符串中的\n，如果找不到会报 timeout 的错误
    * send函数发送的是string，最后的换行符\n不是必须的

* [luasocket学习ltn12中文版](http://www.51wendang.com/doc/b0dbebf4e656d3a99002d4e8)
* [Filters Sources And Sinks](http://lua-users.org/wiki/FiltersSourcesAndSinks)

### LuaSocket參考

* [使用Lua的扩展库LuaSocket用例](http://www.qixing318.com/article/use-lua-extension-libraries-luasocket-cases.html)
* [multipart/form-data 格式的http请求，以及lua构造实现](http://m.xfenglin.com/a/12008472035.html)
* [LuaSocket 使用](http://www.qixing318.com/article/use-lua-extension-libraries-luasocket-cases.html)
* [Lua使用luasocket http请求例子](http://pyfpdf.readthedocs.io/projects/wiki/en/latest/language/lua/http.html)

* HTTP GET
    * [sendhttpmessage-using-http-authentication](http://forums.thinkflood.com/topic/sendhttpmessage-using-http-authentication)

### lua-users

* [http://www.lua.org/](http://www.lua.org/)
* [lua-users](http://lua-users.org/wiki/)
    * [Sample Code](http://lua-users.org/wiki/SampleCode)
    * [Tutorial Directory](http://lua-users.org/wiki/TutorialDirectory)

### Other

* [Lua-cURL is aiming for a full-fledged libcurl binding](http://lua-curl.github.io/)

### Github

* [luasocket](https://github.com/diegonehab/luasocket)
* [lua-http-digest](https://github.com/catwell/lua-http-digest/blob/master/http-digest.lua)
* [lua-requests](https://github.com/JakobGreen/lua-requests/blob/master/src/requests.lua)
* [Lua-cURLv3](https://github.com/Lua-cURL/Lua-cURLv3)

### MIME

首先，我們要了解瀏覽器是如何處理內容的。
在瀏覽器中顯示的內容有 HTML、有 XML、有 GIF、還有 Flash ……那麼，瀏覽器是如何區分它們，決定什麼內容用什麼形式來顯示呢？答案是 MIME Type，也就是該資源的媒體類型

媒體類型通常是通過 HTTP 協議，由 Web 伺服器告知瀏覽器的，更準確地說，是通過 Content-Type 來表示的

| Content-Type | note |
|:-------------|:-----|
| text/HTML    | 表示內容是 text/HTML 類型，也就是超文本文件 |
| application/vnd.ms-excel | 架設你要傳送一個Microsoft Excel文件到客戶端 |

 MIME (Multipurpose Internet Mail Extensions) 是描述消息内容类型的因特网标准
 MIME 消息能包含文本、图像、音频、视频以及其他应用程序专用的数据

* [什么是 MIME Type？](http://www.cnblogs.com/jsean/articles/1610265.html)
* [什麼是 MIME TYPE ?](https://read01.com/7DNNaa.html)
* [MIME（Multipurpose Internet Mail Extensions）類型](https://kknews.cc/news/r9x9abv.html)
