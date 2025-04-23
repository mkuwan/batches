@echo off
chcp 65001 >nul
REM 上級トレーニング027: バッチでファイルの内容を1行ごとに逆順で別ファイルに出力
REM 例: .txt ファイルの内容を逆順でreversed_output.txtに出力
setlocal enabledelayedexpansion
set result=reversed_output.txt
if exist !result! del !result!
for %%f in (*.txt) do (
    set i=0
    for /f "delims=" %%a in ("%%f") do (
        set /a i+=1
        set line[!i!]=%%a
    )
    for /l %%j in (!i!,-1,1) do (
        echo !line[%%j]! >> !result!
    )
)
echo 逆順出力を !result! に保存しました。
endlocal
