#!/usr/bin/env lua

local io = require("io")

local n = io.read()
assert(tonumber(n), "invalid input:" .. n .. "is not a number")
