@echo off
chcp 65001 >nul
REM learn010.bat - 1から5までの数字を連結して表示

setlocal enabledelayedexpansion
set "line="

for /l %%i in (1,1,5) do (
    set "line=!line! %%i"
)

echo !line!

pause
