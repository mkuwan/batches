@echo off
chcp 65001 >nul

REM dirコマンドは、指定したファイルやディレクトリの情報を表示します。

dir notfound.txt

if errorlevel 1 (
    echo 指定したファイルは存在しません。
) else (
    echo 指定したファイルは存在します。
)


