#!/bin/bash
TempDir="/home/pi/server/Minecraft/Temporary"
PermDir="/home/pi/server/Minecraft/Permanent"
StartScript="/home/pi/server/Minecraft/start.sh"

sudo cp -R $PermDir/* $TempDir/
sudo bash $StartScript
