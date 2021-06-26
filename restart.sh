#!/bin/bash
BackupDir="/home/pi/server/Minecraft/Backups"
PermDir="/home/pi/server/Minecraft/Permanent"
SaveScript="/home/pi/server/Minecraft/save.sh"
BackupScript="/home/pi/server/Minecraft/backup.sh"

sudo screen -r minecraft -X stuff "$(printf '\r')say Restarting in 5 minutes!$(printf '\r')"
if [ "$1" != "now" ]
then
    echo Server restarting in 5 minutes!
    sleep 5m
fi

sudo screen -r minecraft -X stuff "say Restarting in 60 seconds!$(printf '\r')"
if [ "$1" != "now" ]
then
    echo Server restarting in 60 seconds!
    sleep 1m
fi

sudo bash $SaveScript

sudo screen -r minecraft -X stuff "stop$(printf '\r')"
while sudo screen -list | grep -q minecraft
do
	:
done

date >> "$PermDir/restarts.txt"
sudo bash $BackupScript
sudo reboot
