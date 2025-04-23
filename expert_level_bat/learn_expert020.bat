@echo off
chcp 65001 >nul
REM 上級トレーニング020: バッチでファイルの行数・単語数・文字数を集計し、レポート出力
REM 例: 全テキストファイルの行数・単語数・文字数をreport_wc.txtに出力
setlocal enabledelayedexpansion
set result=report_wc.txt
if exist !result! del !result!
for %%f in (*.txt) do (
    set lines=0
    set words=0
    set chars=0
    for /f "usebackq delims=" %%a in ("%%f") do (
        set /a lines+=1
        for %%w in (%%a) do set /a words+=1
        set /a chars+=!chars!+!len=%%a!
    )
    echo %%f: 行数=!lines! 単語数=!words! 文字数=!chars! >> !result!
)
echo 集計結果を !result! に出力しました。
endlocal
