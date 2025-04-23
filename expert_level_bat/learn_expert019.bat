@echo off
chcp 65001 >nul
REM 上級トレーニング019: バッチでファイルの内容を全文検索し、ヒット件数を集計
REM 例: 指定キーワードで全テキストファイルを検索し、ヒット件数をreport_search_count.txtに出力
if "%~1"=="" (
    echo 検索キーワードを引数で指定してください。
    exit /b 1
)
setlocal enabledelayedexpansion
set result=report_search_count.txt
if exist !result! del !result!
set count=0
for %%f in (*.txt) do (
    find /c "%1" "%%f" | find /v ": 0" > nul && set /a count+=1
)
echo キーワード「%1」が含まれるファイル数: !count! > !result!
echo 検索結果を !result! に出力しました。
endlocal
