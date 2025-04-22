@echo off
chcp 65001 >nul

REM =============================
REM 007: 2列目（数値）の合計値を計算して表示する
REM -----------------------------
REM sample007.csvの2列目（ヘッダー以外）の合計値を計算して表示します。
REM =============================
REM set /a で合計変数を使い、for /fで1行ごとに2列目を加算します。
REM 例：set sum=0
REM for /f "skip=1 tokens=2 delims=, " %%a in (sample007.csv) do set /a sum+=%%a
REM echo 2列目合計: %sum%

set sum=0
for /f "skip=1 tokens=2 delims=, " %%a in (sample007.csv) do set /a sum+=%%a

echo 2列目合計: %sum%
pause
