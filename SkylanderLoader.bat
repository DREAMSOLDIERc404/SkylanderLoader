@echo off
title SkylanderLoader
mode con: cols=70 lines=40
cd %~dp0
call setup\setup.cmd
call msys2\msys2_shell.cmd -mingw64 -defterm -no-start %* "./SkylanderLoader"
if not exist setup\installed64.txt msys2\msys2_shell.cmd -mingw64 -defterm -no-start %*
exit
