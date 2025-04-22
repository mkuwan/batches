@echo off
REM learn008.bat - シンプルなメニューと日付表示
chcp 65001 >nul

echo メニューを選択してください:
echo 1. 終了

echo 2. 今日の日付

echo 3. 明日の日付

echo 4. 昨日の日付

set /p choice=番号を入力してください: 

if %choice%==1 (
    echo 終了します。
) else if %choice%==2 (
    echo 今日の日付は:
    date /t
) else if %choice%==3 (
    echo 明日の日付は:
    powershell -Command "Get-Date (Get-Date).AddDays(1) -Format 'yyyy/MM/dd'"
) else if %choice%==4 (
    echo 昨日の日付は:
    powershell -Command "Get-Date (Get-Date).AddDays(-1) -Format 'yyyy/MM/dd'"
) else (
    echo 無効な入力です。
)
