@echo off
chcp 65001 >nul
REM learn007.bat - ファイルの存在確認（if exist）

set filename=learn002.bat

if exist %filename% (
    echo %filename% は存在します。
) else (
    echo %filename% は存在しません。
)
echo.

set filename=learnxx.bat

if exist %filename% (
    echo %filename% は存在します。
) else (
    echo %filename% は存在しません。
)
echo.