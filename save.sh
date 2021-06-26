#!/bin/bash
TempDir="/home/pi/server/Minecraft/Temporary"
PermDir="/home/pi/server/Minecraft/Permanent"
BackupScript="/home/pi/server/Minecraft/backup.sh"

if ! sudo screen -list | grep -q minecraft
then
    sudo bash $BackupScript
    date >> "$TempDir/crashes.txt"
    sudo cp -R $TempDir/* $PermDir/
    sudo reboot
else
    sudo screen -r minecraft -X stuff "say Saving...$(printf '\r')"
    sudo screen -r minecraft -X stuff "save-off$(printf '\r')"
    sudo screen -r minecraft -X stuff "save-all$(printf '\r')"
    sleep 5s
    sudo cp -R $TempDir/* $PermDir/
    sudo screen -r minecraft -X stuff "save-on$(printf '\r')"
fi
