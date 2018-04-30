# tplink-mcu

Control tplink smart light devices with nodemcu

# This is not ready yet

I wanted a light way to connect to wifi and control lights with an embedded device. This will let you mess with your devices with a $3 nodemcu.

Based on ideas from [tplink-lightbulb](https://github.com/konsumer/tplink-lightbulb).

I have wrapped this all up in a node package, so you can easily use the excellant [nodemcu-tool](https://www.npmjs.com/package/nodemcu-tool) to upload your code to your NodeMCU. See `examples/` for example-usage.

## setup

You will need to configure your wifi in `examples/settings.lua`. Set it up like this:

```lua
SSID = 'YOUR_SSID'
PASSWORD = 'YOUR_PASSWORD'
```

## usage

* Run `npm i` in this directory.
* Edit your `examples/settings.lua`
* Run `npm run seup` to setup your NodeMCU for the examples (basic files for setting up wifi and running example)
* `npm run example:alloff` - an example to turn all lights off
* `npm run example:allon` - an example to turn all lights on
* `npm run terminal` - to see terminal output