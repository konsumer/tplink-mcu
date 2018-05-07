SERIAL_PORT=/dev/cu.SLAB_USBtoUART
FIRMWARE=./nodemcu-master-10-modules-2018-05-03-10-19-30-integer.bin

firmware:
	esptool.py --port=${SERIAL_PORT} write_flash 0x00000 ${FIRMWARE}

example:
	nodemcu-uploader --port=${SERIAL_PORT} upload init.lua main.lua ../tplight.lua:tplight.lua
