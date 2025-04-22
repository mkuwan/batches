@echo off
chcp 65001 >nul

REM =============================
REM 004: CSVファイルの「商品名」列だけを表示する
REM -----------------------------
REM sample004.csvの2列目以降（商品名列）だけを表示します。
REM =============================
REM for /fコマンドで1行目（ヘッダー）をスキップし、1列目（商品名）だけをechoします。
REM tokens=1 で1列目だけを取得します。
REM 例：for /f "skip=1 tokens=1 delims=," %%a in (sample004.csv) do echo %%a

for /f "skip=1 tokens=2 delims=*" %%a in (sample004.csv) do (
  echo %%a
)

pause
