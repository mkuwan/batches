@echo off
chcp 65001 >nul
REM 上級トレーニング002: 複数拡張子を同時に検索し、ファイルリストを作成
REM 例: .log と .txt ファイルを全サブディレクトリから検索し、result_multi_files.txt に出力
if "%~2"=="" (
    echo 検索する拡張子を2つ以上引数で指定してください（例: log txt）。
    exit /b 1
)
setlocal enabledelayedexpansion
set result=result_multi_files.txt
if exist !result! del !result!
for %%e in (%*) do (
    dir /s /b *.%%e >> !result!
)
echo 検索結果を !result! に出力しました。
endlocal
