@echo off
chcp 65001 >nul
REM 上級トレーニング028: バッチでファイルの内容を指定キーワードで抽出し、抽出結果を別ファイルに保存
REM 例: .txt ファイルから「ERROR」を含む行をまとめてerror_lines.txtに出力
setlocal enabledelayedexpansion
set result=error_lines.txt
if exist !result! del !result!
for %%f in (*.txt) do (
    find "ERROR" "%%f" >> !result!
)
echo ERROR行の抽出結果を !result! に保存しました。
endlocal
