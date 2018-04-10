for /f "tokens=*" %%i in ('type token') do set token=%%i
echo %token%
goto keepalive
:keepalive
call gateway.cmd %token%
goto keepalive
