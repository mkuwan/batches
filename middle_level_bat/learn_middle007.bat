@echo off
chcp 65001 >nul
REM 中級トレーニング007: ファイルサイズが指定値以上のファイルを抽出
REM カレントディレクトリ内で1MB以上のファイル名を表示
setlocal enabledelayedexpansion
set THRESHOLD=1048576
for %%f in (*) do (
    set size=0
    for %%a in ("%%f") do set size=%%~za
    if !size! geq !THRESHOLD! echo %%f (!size! bytes)
)
endlocal
