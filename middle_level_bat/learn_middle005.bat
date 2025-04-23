@echo off
chcp 65001 >nul
REM 中級トレーニング005: 複数ファイルの一括リネーム
REM 拡張子 .txt のファイルを .bak にリネーム
for %%f in (*.txt) do (
    ren "%%f" "%%~nf.bak"
)
echo すべての .txt ファイルを .bak にリネームしました。
