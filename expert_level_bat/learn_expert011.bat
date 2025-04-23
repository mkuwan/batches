@echo off
chcp 65001 >nul
REM 上級トレーニング011: バッチでAPIリクエストを行い、レスポンスを保存（curl利用）
REM 例: 指定URLにGETリクエストし、api_response.txtに保存
if "%~1"=="" (
    echo リクエスト先のURLを引数で指定してください。
    exit /b 1
)
set url=%1
set outfile=api_response.txt
if exist %outfile% del %outfile%
curl -L -o %outfile% "%url%"
echo APIレスポンスを %outfile% に保存しました。
