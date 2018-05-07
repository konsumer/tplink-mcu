-- this gets your wifi setup and calls main.lua

enduser_setup.start(
  function()
    local apinfo = wifi.sta.getconfig(true)
    print(string.format('Connected to "%s" as %s', apinfo.ssid, wifi.sta.getip()))
    require('main')
  end,
  function(err, str)
    print(string.format('enduser_setup: Err #%s: %s', err, str))
  end
)