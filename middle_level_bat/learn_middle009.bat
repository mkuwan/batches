@echo off
chcp 65001 >nul
REM 中級トレーニング009: ファイルの内容を逆順で表示
REM 指定したファイルの内容を逆順で表示する
if "%~1"=="" (
    echo ファイル名を引数で指定してください。
    exit /b 1
)
setlocal enabledelayedexpansion
set i=0
for /f "delims=" %%a in (%1) do (
    set /a i+=1
    set line[!i!]=%%a
)
for /l %%j in (!i!,-1,1) do (
    echo !line[%%j]!
)
endlocal
