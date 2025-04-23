@echo off
chcp 65001 >nul
REM 中級トレーニング003: 引数で指定したファイルの行数をカウント
if "%~1"=="" (
    echo ファイル名を引数で指定してください。
    exit /b 1
)
setlocal enabledelayedexpansion
set count=0
for /f "delims=" %%a in (%1) do (
    set /a count+=1
)
echo %1 の行数: !count!
endlocal
