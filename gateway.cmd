@echo off
( echo {"op":1,"d":0}& echo {"op":2,"d":{"token":"%1","properties":{"$os":"Win32","$browser":"cth103iscool","$device":"Discord.cmd"},"compress":false,"large_threshold":250}}) | websocket.exe -url wss://gateway.discord.gg/?v=6&encoding=json
