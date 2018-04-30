-- load credentials, 'SSID' and 'PASSWORD' declared and initialize in there
dofile('settings.lua')

LED_PIN = 0
gpio.mode(LED_PIN, gpio.OUTPUT)
gpio.write(LED_PIN, gpio.HIGH)

function encrypt(buffer)
  local out = ''
  local key = 0xAB
  for i in buffer:gmatch('.') do
      local c = string.byte(i)
      local o = string.char(bit.bxor(c, key))
      key = string.byte(o)
      out = out .. o
  end
  return out
end

function startup()
  gpio.write(LED_PIN, gpio.LOW)
  
  -- handle responses
  srv = net.createUDPSocket()
  srv:on('receive', function(srv, pl, port, ip)
    print('received :'..pl)
  end)
  srv:listen(9998)

  print(decrypt(encrypt('{"system":{"get_sysinfo":{}}}')))

  -- basic broadcast
  client = net.createUDPSocket()
  client:send(9999, wifi.sta.getbroadcast(), encrypt('{"system":{"get_sysinfo":{}}}'))
  client:close()
end

-- load auto-reloading wifi system, calls startup()
dofile('wifi.lua')

