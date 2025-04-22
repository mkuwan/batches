@echo off
chcp 65001 >nul

REM %1はコマンドライン引数を表す

REM %2は2番目のコマンドライン引数を表す

REM %*は全てのコマンドライン引数を表す

REM %0はバッチファイル名を表す

:loop
if "%1"=="" goto end
echo %1

REM shiftはコマンドライン引数を1つシフトするコマンド
shift

goto loop
:end
