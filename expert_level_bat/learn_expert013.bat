@echo off
chcp 65001 >nul
REM 上級トレーニング013: バッチでファイル監視し、変更時に通知（PowerShell利用）
REM 例: 指定ディレクトリのファイル変更を監視し、変更時に通知
if "%~1"=="" (
    echo 監視するディレクトリを引数で指定してください。
    exit /b 1
)
powershell -Command "Register-ObjectEvent (New-Object IO.FileSystemWatcher '%1') Changed -Action {Write-Host 'ファイルが変更されました'} | Out-Null; Write-Host '監視中...'; Start-Sleep -Seconds 30"
echo 監視を終了しました。
