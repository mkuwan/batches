@echo off
chcp 65001 >nul
REM 上級トレーニング024: バッチでファイル名を一括で連番リネーム
REM 例: .txt ファイルを file_001.txt, file_002.txt ... のようにリネーム
setlocal enabledelayedexpansion
set count=1
for %%f in (*.txt) do (
    set name=file_!count!.txt
    ren "%%f" "!name!"
    set /a count+=1
)
echo .txt ファイルを連番でリネームしました。
endlocal
