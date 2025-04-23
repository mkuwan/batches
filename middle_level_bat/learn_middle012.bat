@echo off
chcp 65001 >nul
REM 中級トレーニング012: ファイルの拡張子一括変換
REM カレントディレクトリ内の .bak ファイルを .txt にリネーム
for %%f in (*.bak) do (
    ren "%%f" "%%~nf.txt"
)
echo すべての .bak ファイルを .txt にリネームしました。
