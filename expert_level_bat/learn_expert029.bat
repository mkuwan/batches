@echo off
chcp 65001 >nul
REM 上級トレーニング029: バッチでファイルの内容を1行ごとに番号付きで別ファイルに出力
REM 例: .txt ファイルの内容をoutput_numbered.txtに行番号付きで出力
setlocal enabledelayedexpansion
set result=output_numbered.txt
if exist !result! del !result!
for %%f in (*.txt) do (
    set count=0
    for /f "delims=" %%a in ("%%f") do (
        set /a count+=1
        echo !count!: %%a >> !result!
    )
)
echo 番号付き出力を !result! に保存しました。
endlocal
