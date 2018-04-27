-- my wifi settings
require "wifi-connect"

-- require this from wherever you put it
tplink = require "../tplink-mcu"

-- find all lights that are on local network, and turn them off
local t = tplink.scan(1000000) -- scan for 1,000,000 us = 1 second
for name,ip in pairs(t) do
  print(name, ip)
  tplink.power(ip, false)
end