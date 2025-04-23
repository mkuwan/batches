@echo off
chcp 65001 >nul
REM 中級トレーニング013: ファイルの先頭N行だけを表示
REM 引数で指定したファイルの先頭10行を表示
if "%~1"=="" (
    echo ファイル名を引数で指定してください。
    exit /b 1
)
setlocal enabledelayedexpansion
set count=0
for /f "delims=" %%a in (%1) do (
    set /a count+=1
    if !count! leq 10 echo %%a
)
endlocal
