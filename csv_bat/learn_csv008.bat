@echo off
chcp 65001 >nul

REM =============================
REM 008: 2列目（数値）の平均値を計算して表示する
REM -----------------------------
REM sample008.csvの2列目（ヘッダー以外）の平均値を計算して表示します。
REM =============================
REM set /a で合計(sum)と件数(count)をカウントし、最後に平均を計算します。

set sum=0
set count=0
for /f "skip=1 tokens=2 delims=, " %%a in (sample008.csv) do (
    set /a sum+=%%a
    set /a count+=1
)

REM 平均値の計算（小数点以下切り捨て）
set avg=0
if not %count%==0 set /a avg=sum/count

echo 2列目平均値: %avg%
pause
