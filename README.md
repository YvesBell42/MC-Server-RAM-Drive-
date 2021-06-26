# MC-Server-RAM-Drive-
# Yves Bell
#
# Suite of automated scripts is purposed for Linux hosted Minecraft Servers.
# Configured specifically for use on RAM disk.
# Tested with Minecraft versions 1.16, Snapshot 21w18a and 1.17.
# Superuser crontab setup for @reboot setup.sh and scheduled save.sh and restart.sh scripts are needed.
# e.g.
# @reboot sh "/home/pi/server/Minecraft/setup.sh"
# */5 * * * * sh "/home/pi/server/Minecraft/save.sh"
# 0 */6 * * * sh "/home/pi/server/Minecraft/restart.sh"
# wrapper.sh provides some basic grounds for server command wrapping and requires execution through crontab.
# benchmark.sh provides some basic comparison between drive speeds.
