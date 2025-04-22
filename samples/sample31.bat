@echo off
chcp 65001 >nul

set VAR=abc
echo %VAR%
setlocal enabledelayedexpansion
set VAR=def
echo !VAR!
endlocal
"C:\Program Files\sample.exe"
pause
