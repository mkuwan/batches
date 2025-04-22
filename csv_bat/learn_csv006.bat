@echo off
chcp 65001 >nul

REM =============================
REM 006: データ行の合計数をカウントして表示する
REM -----------------------------
REM sample006.csvのデータ行（ヘッダー以外）の数をカウントして表示します。
REM =============================
REM set /a でカウンタ変数を使い、for /fで1行ごとに+1します。
REM 例：set count=0
REM for /f "skip=1 tokens=*" %%a in (sample006.csv) do set /a count+=1
REM echo データ行数: %count%

set count=0
for /f "skip=1 tokens=*" %%a in (sample006.csv) do set /a count+=1

echo データ行数: %count%
pause
