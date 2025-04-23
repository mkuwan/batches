@echo off
chcp 65001 >nul
REM 中級トレーニング015: ファイル内の特定文字列を検索
REM 引数で指定したファイルから「ERROR」を含む行を表示
if "%~1"=="" (
    echo ファイル名を引数で指定してください。
    exit /b 1
)
find "ERROR" %1
