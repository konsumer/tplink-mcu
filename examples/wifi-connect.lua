-- this is the connection-settings for my wifi network
-- put your own in here

wifi.sta.config("accesspointname","yourpassword")
wifi.sta.connect()
tmr.delay(1000000)   -- wait 1,000,000 us = 1 second
print(wifi.sta.status())
print(wifi.sta.getip())