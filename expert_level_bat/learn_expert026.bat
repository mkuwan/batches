@echo off
chcp 65001 >nul
REM 上級トレーニング026: バッチでファイル名に日付・時刻を付加してバックアップ
REM 例: .txt ファイルを sample_20250423_153000.txt のようにリネームしてバックアップ
for %%f in (*.txt) do (
    setlocal enabledelayedexpansion
    set "name=%%~nf_!date:~0,4!!date:~5,2!!date:~8,2!_!time:~0,2!!time:~3,2!!time:~6,2!%%~xf"
    ren "%%f" "!name!"
    endlocal
)
echo .txt ファイルを日付・時刻付きでバックアップしました。
