@echo off
chcp 65001 >nul

set /p VAR=値を入力してください（未入力ならdefault）:
if "%VAR%"=="" set VAR=default
echo %VAR%
pause
