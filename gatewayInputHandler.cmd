@echo off
for /f "tokens=*" %%i in ('type token') do set token=%%i
echo {"op":1,"d":0}
echo {"op":2,"d":{"token":"%token%","properties":{"$os":"Win32","$browser":"cth103iscool","$device":"Discord.cmd"},"compress":false,"large_threshold":250}}
