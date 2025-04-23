@echo off
chcp 65001 >nul
REM 中級トレーニング029: ファイルの内容を別ファイルに1行ごとに追記
REM 引数で指定したファイルの内容をoutput.txtに1行ずつ追記
if "%~1"=="" (
    echo ファイル名を引数で指定してください。
    exit /b 1
)
for /f "delims=" %%a in (%1) do (
    echo %%a >> output.txt
)
echo %1 の内容を output.txt に追記しました。
