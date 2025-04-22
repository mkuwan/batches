@echo off
chcp 65001 >nul

REM usebackq オプションを使用して、ファイル名にスペースが含まれている場合でも正しく処理されるようにする
for /f "usebackq delims=" %%a in ("sample.txt") do echo %%a
pause

REM dir /b コマンドを使用して、カレントディレクトリ内のファイル名を取得する
REM /b オプションを使用すると、ファイル名のみが表示される
REM /s オプションを使用すると、サブディレクトリ内のファイルも表示される
REM /a オプションを使用すると、特定の属性を持つファイルのみを表示できる
for /f "delims=" %%a in ('dir /b /a') do echo %%a

pause
