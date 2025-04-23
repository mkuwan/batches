@echo off
chcp 65001 >nul
REM 中級トレーニング022: ファイルサイズの合計を計算
REM
REM カレントディレクトリ内の全ファイルサイズ合計を表示
REM
setlocal enabledelayedexpansion
set total=0
for %%f in (*) do (
    set size=0
    for %%a in ("%%f") do set size=%%~za
    set /a total+=!size!
)
echo 合計サイズ: !total! bytes
endlocal
