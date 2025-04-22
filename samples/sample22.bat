@echo off
chcp 65001 >nul

if exist out.txt echo ファイルがあります

if not exist sample.txt echo ファイルがありません

REM \nulは、Windowsのコマンドプロンプトで使用される特殊なファイル名で、

REM 実際には存在しないファイルを指します。

if exist out\nul echo フォルダがあります

if not exist out2\nul echo フォルダがありません

pause
