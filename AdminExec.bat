@echo off
title "UAC Admin Executor Bypass Tool By: Altify"
echo. [32mLoading Information[0m
echo.
echo.
echo.
echo. [31m [31mEnter Password Below[0m
SET /P pass=
if pass==AVKEJtWkBj
set __COMPAT_LAYER=RunAsInvoker C:/example.exe
start C:/example.exe
