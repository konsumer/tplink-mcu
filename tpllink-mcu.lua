-- TODO: add interface here

local function encrypt(msg)
end

local function decrypt(buf, start)
  start = start or 4
  local key = 0xAB
  local size = buf:len()-1
  local decoded = ""
  for i=start,size do
    local c = buf(i,1):uint()
    decoded = decoded .. string.format("%x", bit.bxor(c,key))
    key = c
  end
  return ByteArray.new(decoded)
end

local function send(ip, msg)
end

local function getIP(name)

end

-- should this support callbacks instead of timeout?
local function scan(time)
end

local function info(ip)
end

local function power(ip, value)
end
