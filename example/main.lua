-- this is entry-point, after wifi is all setup

local tplight = require 'tplight'


tplight.scan(function(ip, data, socket)
  print(string.format('got data from %s', ip))
  ok, json = pcall(sjson.encode, data)
  print(json)
end)


