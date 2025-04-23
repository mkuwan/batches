@echo off
chcp 65001 >nul
REM 上級トレーニング023: バッチでファイルの拡張子を一括変換（複数指定対応）
REM 例: .log, .bak ファイルを .txt に一括変換
if "%~2"=="" (
    echo 変換元拡張子と変換先拡張子を引数で指定してください（例: log txt）。
    exit /b 1
)
for %%f in (*.%1) do ren "%%f" "%%~nf.%2"
echo .%1 ファイルを .%2 に一括変換しました。
