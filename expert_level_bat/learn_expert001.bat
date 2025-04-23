@echo off
chcp 65001 >nul
REM 上級トレーニング001: 複数ディレクトリを再帰的に検索し、特定拡張子のファイルをリストアップ
REM 例: .log ファイルを全サブディレクトリから検索し、result_log_files.txt に出力
if "%~1"=="" (
    echo 検索する拡張子を引数で指定してください（例: log）。
    exit /b 1
)
dir /s /b *."%1" > result_%1_files.txt
echo 検索結果を result_%1_files.txt に出力しました。
