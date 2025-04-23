@echo off
chcp 65001 >nul
REM 中級トレーニング027: ファイルの更新日時が指定日以降のファイルを表示

REM 引数で指定した日付(YYYY/MM/DD)以降に更新されたファイル名を表示

if "%~1"=="" (
    echo 日付(YYYY/MM/DD)を引数で指定してください。
    exit /b 1
)

setlocal enabledelayedexpansion
set TARGET=%1
for %%f in (*) do (
    for %%d in (%%f) do (
        set FILEDATE=%%~td
        set FILEDATE=!FILEDATE:~0,10!
        if "!FILEDATE!" GEQ "!TARGET!" echo %%f (!FILEDATE!)
    )
)
endlocal
