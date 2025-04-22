@echo off
chcp 65001 >nul
REM learn005.bat - if文による条件分岐

set /p answer=5の答えを入力してください: 
if %answer%==five (
    echo 正解です！fiveです。
) else (
    echo 不正解です。5ではありません。
)

set /p answer=はいの答えを入力してください: 
if /i %answer%==yes (
    echo 正解です。「yes」です。
) else (
    echo 残念！違います。
)
