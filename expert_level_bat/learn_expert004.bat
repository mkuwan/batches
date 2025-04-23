@echo off
chcp 65001 >nul
REM 上級トレーニング004: ファイルの差分を検出し、差分内容を別ファイルに保存
REM 例: 2つのファイルを比較し、異なる行をresult_diff.txtに出力
if "%~2"=="" (
    echo 比較する2つのファイル名を引数で指定してください。
    exit /b 1
)
setlocal enabledelayedexpansion
set result=result_diff.txt
if exist !result! del !result!
REM 1つ目にしかない行
findstr /v /g:%2 %1 > !result!
REM 2つ目にしかない行
findstr /v /g:%1 %2 >> !result!
echo 差分内容を !result! に出力しました。
endlocal
