SET token = powershell -command Get-Content config | Select-String -pattern "token=" -notmatch
echo %token%
goto keepalive
:keepalive
call gateway.cmd %token%
goto keepalive
