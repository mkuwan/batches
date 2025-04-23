@echo off
chcp 65001 >nul
REM 中級トレーニング030: ファイルの内容を1行ごとに番号付きで別ファイルに出力
REM 引数で指定したファイルの内容をoutput_numbered.txtに行番号付きで出力
if "%~1"=="" (
    echo ファイル名を引数で指定してください。
    exit /b 1
)
setlocal enabledelayedexpansion
set count=0
for /f "delims=" %%a in (%1) do (
    set /a count+=1
    echo !count!: %%a >> output_numbered.txt
)
echo %1 の内容を output_numbered.txt に番号付きで出力しました。
endlocal
