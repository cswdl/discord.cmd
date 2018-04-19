SET channelid = 123456789109876543
cmd /c init.cmd
timeout /t 5 /nobreak > NUL
call sendMessage.bat "Hello", %channelid%
