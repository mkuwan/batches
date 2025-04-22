@echo off
chcp 65001 >nul
REM learn011.bat - 偶数・奇数の判定と表示

setlocal enabledelayedexpansion
set "even="
set "odd="
set two=2

for /l %%i in (1,1,5) do (
    set /a mod=%%i%%%two%
    if !mod! equ 0 (
        set "even=!even! %%i"
    )
    set /a mod=%%i%%2
    if !mod! neq 0 (
        set "odd=!odd! %%i"
    )
)

echo 偶数: !even!
echo 奇数: !odd!

pause
