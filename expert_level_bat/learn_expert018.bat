@echo off
chcp 65001 >nul
REM 上級トレーニング018: バッチでファイルのアクセス権を一括変更（icacls利用）
REM 例: 指定拡張子のファイルのアクセス権をEveryone:読み取り専用に変更
if "%~1"=="" (
    echo 拡張子を引数で指定してください（例: txt）。
    exit /b 1
)
for %%f in (*.%1) do icacls "%%f" /grant Everyone:R

echo %1 ファイルのアクセス権を一括変更しました。
