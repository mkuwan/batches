@echo off
chcp 65001 >nul
REM 上級トレーニング008: ファイルの内容をSHA-256でハッシュ化し、結果を出力
REM 例: 指定ファイルのSHA-256ハッシュ値をhash_output.txtに保存
if "%~1"=="" (
    echo ハッシュ化するファイル名を引数で指定してください。
    exit /b 1
)
set infile=%1
set outfile=hash_output.txt
if exist %outfile% del %outfile%
powershell -Command "Get-FileHash '%infile%' -Algorithm SHA256 | Select-Object -ExpandProperty Hash | Out-File -Encoding ASCII '%outfile%'"
echo SHA-256ハッシュ値を %outfile% に保存しました。
