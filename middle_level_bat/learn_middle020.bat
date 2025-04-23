@echo off
chcp 65001 >nul
REM 中級トレーニング020: ファイルの拡張子を一括で変更（任意指定）
REM 拡張子を引数で指定し、カレントディレクトリ内の全ファイルを変換
if "%~2"=="" (
    echo 変換元と変換先の拡張子を引数で指定してください。
    echo 例: learn_middle020.bat txt log
    exit /b 1
)
for %%f in (*.%1) do (
    ren "%%f" "%%~nf.%2"
)
echo .%1 ファイルを .%2 に一括変換しました。
