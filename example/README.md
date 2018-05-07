# tplink-mcu example

This is a simple example project that will allow you to control the lights on your network.

## firmaware

I am using a custom-firmware from [here](https://nodemcu-build.com), just to make sure it has all the stuff I need.

I enabled these:

`bit` `enduser_setup` `file` `gpio` `net` `node` `sjson` `tmr` `uart` `wifi`

You don't have to build your own, as I included it. You may not even need all of these, as this library only actually uses `bit`, `net`, and `sjson`.


## dependencies

You'll need python installed.

Install esptool with this:

```
pip install esptool nodemcu-uploader
```

I also needed to do this:

```sh
easy_install pyserial
```

You will also need `make` to run the scripts, but you should be able to work them out without it, too.

## usage

Edit the `Makefile` to reflect your setup.

Install the firmware I used with this:

```sh
make firmware
```

Install the example with this:

```sh
make example
```

Once it's running, it's got [enduser-setup](https://github.com/nodemcu/nodemcu-firmware/blob/master/docs/en/modules/enduser-setup.md), so you should see an open wifi network (called `SetupGadget_XXXXXX`) you can join and [configure](http://192.168.4.1/), and start controlling your lights!

