@echo off
chcp 65001 >nul
REM 上級トレーニング014: バッチで複数ファイルを圧縮（zip化）し、保存（PowerShell利用）
REM 例: 指定拡張子のファイルをzip化し、output.zipに保存
if "%~1"=="" (
    echo 圧縮する拡張子を引数で指定してください（例: txt）。
    exit /b 1
)
set zipfile=output.zip
if exist %zipfile% del %zipfile%
powershell -Command "Compress-Archive -Path *.%1 -DestinationPath '%zipfile%'"
echo %1 ファイルを %zipfile% に圧縮しました。
