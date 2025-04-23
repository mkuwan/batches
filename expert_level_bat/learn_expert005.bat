@echo off
chcp 65001 >nul
REM 上級トレーニング005: サブディレクトリごとにファイル件数を集計し、レポートを出力
REM 例: 各サブディレクトリ内の .bat ファイル数を集計し、report_bat_count.txt に出力
if "%~1"=="" (
    echo 集計する拡張子を引数で指定してください（例: bat）。
    exit /b 1
)
setlocal enabledelayedexpansion
set result=report_%1_count.txt
if exist !result! del !result!
for /d %%d in (*) do (
    pushd %%d
    set count=0
    for %%f in (*.%1) do set /a count+=1
    echo %%d: !count! >> ..\!result!
    popd
)
echo サブディレクトリごとのファイル件数を !result! に出力しました。
endlocal
