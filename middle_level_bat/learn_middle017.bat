@echo off
chcp 65001 >nul
REM 中級トレーニング017: ファイルの重複行を除去して表示
REM 引数で指定したファイルから重複行を除去して表示
if "%~1"=="" (
    echo ファイル名を引数で指定してください。
    exit /b 1
)
setlocal enabledelayedexpansion
for /f "delims=" %%a in ('sort %1 ^| uniq') do (
    echo %%a
)
endlocal
