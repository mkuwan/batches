@echo off
chcp 65001 >nul
REM learn009.bat - 九九表

setlocal enabledelayedexpansion

echo 九九表を表示します。

for /l %%i in (1,1,9) do (
    set "line="
    for /l %%j in (1,1,9) do (
        set /a prod=%%i*%%j
        set "line=!line! %%i*%%j=!prod! "
    )
    echo !line!
)

pause
