@echo off
chcp 65001 >nul
REM 上級トレーニング016: バッチでファイルの重複検出（ハッシュ値で判定）
REM 例: カレントディレクトリ内の重複ファイルをSHA-256で検出し、duplicate_report.txtに出力
setlocal enabledelayedexpansion
set result=duplicate_report.txt
if exist !result! del !result!
for %%f in (*) do (
    for /f %%h in ('powershell -Command "(Get-FileHash '%%f' -Algorithm SHA256).Hash"') do (
        if defined hash[%%h] (
            echo 重複: %%f = !hash[%%h]! >> !result!
        ) else (
            set hash[%%h]=%%f
        )
    )
)
echo 重複ファイルの検出結果を !result! に出力しました。
endlocal
