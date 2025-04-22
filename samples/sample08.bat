@echo off
chcp 65001 >nul

REM バッチファイルの名前
echo %0

call :subroutine
echo サブルーチンから戻りました
exit /b

:subroutine
echo サブルーチンです
exit /b
