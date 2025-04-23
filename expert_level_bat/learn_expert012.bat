@echo off
chcp 65001 >nul
REM 上級トレーニング012: バッチでAPIにPOSTリクエストし、レスポンスを保存（curl利用）
REM 例: 指定URLにPOSTし、api_post_response.txtに保存
if "%~2"=="" (
    echo リクエスト先のURLと送信データファイルを引数で指定してください。
    exit /b 1
)
set url=%1
set datafile=%2
set outfile=api_post_response.txt
if exist %outfile% del %outfile%
curl -X POST -H "Content-Type: application/json" -d @%datafile% -o %outfile% "%url%"
echo POSTレスポンスを %outfile% に保存しました。
