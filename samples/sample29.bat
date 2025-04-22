@echo off
chcp 65001 >nul

rem 前のコマンドが成功したら次を実行
echo 1 && echo 2   

rem 前のコマンドが失敗したら次を実行
echo 1 || echo 2   

rem 成否に関係なく両方実行
echo 1 & echo 2    
pause
