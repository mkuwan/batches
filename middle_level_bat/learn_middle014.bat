@echo off
chcp 65001 >nul
REM 中級トレーニング014: ファイルの末尾N行だけを表示
REM 引数で指定したファイルの末尾10行を表示
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
set /a start=i-9
if !start! lss 1 set start=1
for /l %%j in (!start!,1,!i!) do (
    echo !line[%%j]!
)
endlocal
