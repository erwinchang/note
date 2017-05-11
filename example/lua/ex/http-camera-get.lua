#!/usr/bin/env lua

local io = require("io")
local http = require("socket.http")
local mime = require("mime")
local ltn12 = require("ltn12")

function printf(...)
    io.stderr:write(string.format(...))
end
function fail(...)
    io.stderr:write("ERROR: ")
    printf(...)
    io.stderr:write("!\n")
    os.exit()
end

local response_body = {}




local res, code, response_headers = http.request {
  --url = "http://192.168.22.198/vb.htm?VideoEncoderOpt&VideoResolution1&VideoResolution2&ratecontrol1&ratecontrol2&bitrate1&bitrate2&framerate1&framerate2",
  --url = "http://192.168.22.198/vb.htm?gateway&netmask&netip&dnsip&dhcpenable&wantype",
  --url = "http://192.168.22.198/vb.htm?ptzprotocol&ptzaddr&ptzbaud",
  --url = "http://192.168.22.198/vb.htm?audioenable&audiomode&audiosamplerate&audioencoding&audioinvolume&audiooutvolume&audioalarmlevel",
  --url = "http://192.168.22.198/vb.htm?motionenable&motionsensitivity&motioncenable&motioncvalue",
  url = "http://192.168.22.198/vb.htm?brightness&contrast&saturation&sharpness",  
  method = "GET",
  headers = { authorization = "Basic " .. (mime.b64("admin:admin")) },
  sink = ltn12.sink.table(response_body)
}

if res == nil then
	fail("Connnect Fail")
end

print("res" .. res )
print("code" .. code )

if type(response_headers) == "table" then
	for k, v in pairs(response_headers) do
		print(k,v)
	end
end

print("response_body:")
if type(response_body) == "table" then
	print(table.concat(response_body))
else	
	print("Not a table:", type(response_body))
end