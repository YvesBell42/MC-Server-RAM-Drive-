#!/bin/bash
BackupDir="/home/pi/server/Minecraft/Backups"
PermDir="/home/pi/server/Minecraft/Permanent"

sudo zip -r "$BackupDir/world-$(date +%M-%H-%d-%m-%Y).zip" "$PermDir/world"

