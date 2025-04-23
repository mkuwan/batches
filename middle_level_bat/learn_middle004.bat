@echo off
chcp 65001 >nul
REM 中級トレーニング004: 日付ごとにログファイルを分割保存
REM 今日の日付でログファイルを作成し、メッセージを追記する
setlocal
set LOGFILE=log_%date:~0,4%%date:~5,2%%date:~8,2%.txt
set MSG=これは本日のログです。
echo %MSG% >> %LOGFILE%
echo %LOGFILE% にメッセージを追記しました。
endlocal
