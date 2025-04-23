@echo off
chcp 65001 >nul
REM 中級トレーニング008: ファイルのバックアップ（拡張子追加）
REM カレントディレクトリ内の .log ファイルを .log.bak にコピー
for %%f in (*.log) do (
    copy "%%f" "%%f.bak" >nul
)
echo すべての .log ファイルを .log.bak にバックアップしました。
