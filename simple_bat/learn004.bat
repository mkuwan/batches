@echo off
chcp 65001 >nul
REM learn004.bat - 入力を受け取って表示（set /p）

set /p name=あなたの名前を入力してください: 
echo こんにちは、%name% さん！
echo よろしくお願いします。
echo.
pause
REM ここで一時停止

set /p age=あなたの年齢を入力してください:
echo あなたの年齢は %age% 歳ですね。
echo %name% さんは %age% 歳です。
echo ありがとうございました。
echo.
pause
REM ここで一時停止