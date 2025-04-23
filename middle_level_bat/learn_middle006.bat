@echo off
chcp 65001 >nul
REM 中級トレーニング006: サブディレクトリ内のファイル一覧を取得
REM 指定したディレクトリ以下の全ファイルを list.txt に出力
if "%~1"=="" (
    echo ディレクトリ名を引数で指定してください。
    exit /b 1
)
dir /s /b "%~1" > list.txt
echo %~1 以下のファイル一覧を list.txt に出力しました。
