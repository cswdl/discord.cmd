SET token = powershell -command (get-content "config") -notmatch "token="
echo %token%
goto keepalive
:keepalive
call gateway.cmd %token%
goto keepalive
