@echo off
chcp 65001 >nul
REM 上級トレーニング007: ファイルの内容をBase64エンコードして別ファイルに保存
REM 例: 指定ファイルをBase64エンコードし、encoded_output.txtに保存
if "%~1"=="" (
    echo エンコードするファイル名を引数で指定してください。
    exit /b 1
)
set infile=%1
set outfile=encoded_output.txt
if exist %outfile% del %outfile%
powershell -Command "[Convert]::ToBase64String([IO.File]::ReadAllBytes('%infile%')) | Out-File -Encoding ASCII '%outfile%'"
echo Base64エンコード結果を %outfile% に保存しました。
