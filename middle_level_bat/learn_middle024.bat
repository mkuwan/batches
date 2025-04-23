@echo off
chcp 65001 >nul
REM 中級トレーニング024: ファイル名を大文字に変換してリネーム
REM カレントディレクトリ内の全ファイル名を大文字にリネーム
for %%f in (*) do (
    set "old=%%f"
    call set "new=%%f"
    call set "new=!new:~0,0!!new:~0,1!!new:~1!"
    for %%A in (!old!) do (
        set "upper=%%~nxA"
        call set "upper=!upper:~0,0!!upper:~0,1!!upper:~1!"
        call ren "%%f" "!upper!"
    )
)
echo すべてのファイル名を大文字にリネームしました。
