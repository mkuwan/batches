@echo off
chcp 65001 >nul
REM 上級トレーニング017: バッチでファイルのタイムスタンプを一括変更（PowerShell利用）
REM 例: 指定拡張子のファイルの更新日時を現在時刻に変更
if "%~1"=="" (
    echo 拡張子を引数で指定してください（例: txt）。
    exit /b 1
)
powershell -Command "Get-ChildItem -Path . -Filter '*.%1' | ForEach-Object { $_.LastWriteTime = Get-Date }"
echo %1 ファイルの更新日時を一括変更しました。
