local tplight = {}

-- decrypt a message
function tplight.encrypt(buffer)
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

-- encrypt a message
function tplight.decrypt(buffer, start)
  start = start or 4
  local key = 0xAB
  local size = buffer:len()-1
  local decoded = ""
  for i=start,size do
    local c = buffer(i,1):uint()
    decoded = decoded .. bit.bxor(c,key)
    key = c
  end
  return decoded
end

-- send a message to a light
function tplight.send(ip, msg, port)
  port = port or 9999
  
end

-- get an IP address by the name of the light
function tplight.getIP(name)

end

-- look for devices on your network
function tplight.scan(callback)
  local udpSocket = net.createUDPSocket()
  udpSocket:listen(9998, wifi.sta.getip())
  udpSocket:on('receive', function(s, data, port, ip)
    print(string.format('received "%s" from %s:%d', data, ip, port))
    callback(ip, sjson.decode(decrypt(ip, data, udpSocket)))
  end)
  -- TODO: send broadcast here
end

-- get info about a device
function tplight.info(ip)
end

-- turn the power of on/off a device
function tplight.power(ip, value)
end

return tplight
