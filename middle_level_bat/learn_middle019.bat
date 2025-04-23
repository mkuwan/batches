@echo off
chcp 65001 >nul
REM 中級トレーニング019: ファイルの各行に行番号を付与して表示
REM 引数で指定したファイルの各行の先頭に行番号を付与して表示
if "%~1"=="" (
    echo ファイル名を引数で指定してください。
    exit /b 1
)
setlocal enabledelayedexpansion
set count=0
for /f "delims=" %%a in (%1) do (
    set /a count+=1
    echo !count!: %%a
)
endlocal
