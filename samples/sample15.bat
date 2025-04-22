@echo off
chcp 65001 >nul

setlocal
set VAR=ローカル変数
echo %VAR%
endlocal
echo %VAR%（この行は何も表示されません）
