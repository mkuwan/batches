@echo off
chcp 65001 >nul
REM 上級トレーニング021: バッチでファイルの最終更新日が指定日以降のファイルをリストアップ
REM 例: 指定日(YYYY/MM/DD)以降に更新されたファイルをresult_updated_files.txtに出力
if "%~1"=="" (
    echo 日付(YYYY/MM/DD)を引数で指定してください。
    exit /b 1
)
setlocal enabledelayedexpansion
set result=result_updated_files.txt
if exist !result! del !result!
for %%f in (*) do (
    for %%d in (%%f) do (
        set FILEDATE=%%~td
        set FILEDATE=!FILEDATE:~0,10!
        if "!FILEDATE!" GEQ "%1" echo %%f (!FILEDATE!) >> !result!
    )
)
echo 指定日以降に更新されたファイルを !result! に出力しました。
endlocal
