@echo off
chcp 65001 >nul
REM 中級トレーニング026: ファイルの拡張子ごとに件数を集計
REM カレントディレクトリ内の拡張子ごとのファイル数を表示
setlocal enabledelayedexpansion
for %%f in (*) do (
    set ext=%%~xf
    if defined count[!ext!] (
        set /a count[!ext!]+=1
    ) else (
        set count[!ext!]=1
    )
)
for /f "tokens=2 delims==[]" %%e in ('set count[') do (
    echo %%e: !count[%%e]! 件
)
endlocal
