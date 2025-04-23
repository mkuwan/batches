@echo off
chcp 65001 >nul
REM 上級トレーニング003: ファイルの内容を正規表現で抽出し、結果を別ファイルに保存
REM 例: 指定した拡張子の全ファイルからメールアドレスを抽出し、result_emails.txt に保存
if "%~1"=="" (
    echo 検索する拡張子を引数で指定してください（例: txt）。
    exit /b 1
)
setlocal enabledelayedexpansion
set result=result_emails.txt
if exist !result! del !result!
for /r %%d in (.) do (
    for %%f in (%%d\*.%1) do (
        findstr /r /i "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z][a-zA-Z]+" "%%f" >> !result!
    )
)
echo メールアドレス抽出結果を !result! に保存しました。
endlocal
