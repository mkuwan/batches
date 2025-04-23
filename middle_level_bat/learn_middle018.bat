@echo off
chcp 65001 >nul
REM 中級トレーニング018: ファイルの行数が指定値以上か判定
REM 引数で指定したファイルの行数が100行以上ならメッセージ表示
if "%~1"=="" (
    echo ファイル名を引数で指定してください。
    exit /b 1
)
setlocal enabledelayedexpansion
set count=0
for /f "delims=" %%a in (%1) do (
    set /a count+=1
)
if !count! geq 100 (
    echo %1 は100行以上あります。
) else (
    echo %1 は100行未満です。
)
endlocal
