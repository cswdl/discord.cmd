@echo off
:loop
set /p gatewayOutput=
rem you can use %gatewayOutput% now!
rem TODO: add fucking handling
echo %gatewayOutput%
IF "%gatewayOutput:~0,21%"=={"t":"MESSAGE_CREATE" (
%gatewayOutput% || discordMessageCreate || echo no message_create event
)
goto loop
