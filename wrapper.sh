#!/bin/bash
while true
do
sudo screen -r minecraft -X hardcopy "/home/pi/server/Minecraft/Temporary/output.log"
if grep HelloWorld "/hoome/pi/server/Minecraft/Temporary/output.log" | fgrep -v -c -f "/home/pi/server/Minecraft/Temporary/wrapper.log";
then
   sudo screen -r minecraft -X stuff "say Hail Satan!$(printf '\r')"
   grep HelloWorld "/home/pi/server/Minecraft/Temporary/output.log" | fgrep -v -f "/home/pi/server/Minecraft/Temporary/wrapper.log" >> "/home/pi/server/Minecraft/Temporary/wrapper.log"
fi
sleep 5
done
