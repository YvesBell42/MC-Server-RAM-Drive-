#!/bin/bash
echo '> RAM Disk Write'
dd if=/dev/zero of=/home/pi/server/Minecraft/Temporary/test bs=8k count=50k
echo '> RAM Disk Read'
dd if=/home/pi/server/Minecraft/Temporary/test of=/dev/null bs=8k count=50k
echo '> RAM Disk MD5'
dd if=/home/pi/server/Minecraft/Temporary/test bs=1M count=1024 | md5sum
echo '> SSD MD5'
dd if=/dev/sda2 bs=1M count=1024 | md5sum
sudo rm /home/pi/server/Minecraft/Temporary/test


echo '> hdparm -t /dev/sda2'
sudo hdparm -t /dev/sda2
echo '> hdparm -T /dev/sda2'
sudo hdparm -T /dev/sda2
echo '> hdparm -S /dev/sda2'
sudo hdparm -S /dev/sda2
