@echo off
chcp 65001 >nul
REM learn006.bat - for文による繰り返し

for %%i in (1 2 3 4 5) do (
    echo %%i 回目の処理です。
)
