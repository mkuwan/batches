@echo off
chcp 65001 >nul
REM エンコーディング Shift_JIS となっていることを確認してください

REM learn003.bat - 変数の利用（setとecho）

set message=バッチファイルで変数を使っています！

echo %message%
