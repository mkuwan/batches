@echo off
chcp 65001 >nul
REM 中級トレーニング025: ファイル名を小文字に変換してリネーム
REM カレントディレクトリ内の全ファイル名を小文字にリネーム
for %%f in (*) do (
    set "old=%%f"
    setlocal enabledelayedexpansion
    set "lower=!old!"
    for %%A in (!lower!) do (
        call ren "%%f" "%%A"
    )
    endlocal
)
echo すべてのファイル名を小文字にリネームしました。
