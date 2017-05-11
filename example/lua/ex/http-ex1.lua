#!/usr/bin/env lua

-- http访问请求
http=require("socket.http")
result=http.request("http://ip.taobao.com/service/getIpInfo.php?ip=114.35.91.64")
print(result)
