@echo off
chcp 65001 >nul
REM 上級トレーニング006: ファイルの内容を暗号化して別ファイルに保存（簡易XOR暗号）
REM 例: 指定ファイルを1バイトごとにXORし、encrypted_output.txtに保存
if "%~1"=="" (
    echo 暗号化するファイル名を引数で指定してください。
    exit /b 1
)
setlocal enabledelayedexpansion
set KEY=42
set infile=%1
set outfile=encrypted_output.txt
if exist !outfile! del !outfile!
for /f "delims=" %%a in ('type "%infile%"') do (
    set "line=%%a"
    set "enc="
    for /l %%i in (0,1,1023) do (
        set "char=!line:~%%i,1!"
        if "!char!"=="" goto write_line
        set /a code=0
        for /f %%c in ('cmd /c exit /b !char!') do set /a code=%%c
        set /a enc_code=!code! ^ !KEY!
        cmd /c exit /b !enc_code!
        for %%e in (1) do set "enc=!enc!!char!"
    )
    :write_line
    echo !enc!>>!outfile!
)
echo 暗号化結果を !outfile! に保存しました。
endlocal
