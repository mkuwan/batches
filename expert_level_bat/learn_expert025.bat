@echo off
chcp 65001 >nul
REM 上級トレーニング025: バッチでファイル名を一括で大文字・小文字変換
REM 例: .txt ファイルをすべて大文字にリネーム
for %%f in (*.txt) do (
    setlocal enabledelayedexpansion
    set "old=%%f"
    set "upper=!old:~0,0!!old:~0,1!!old:~1!"
    ren "%%f" "!upper!"
    endlocal
)
echo .txt ファイルを大文字にリネームしました。
