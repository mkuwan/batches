@echo off
chcp 65001 >nul

(for %%i in (*bat) do echo %%i) > list.txt
pause

REM list.txtの内容を表示
type list.txt
pause

@REM REM list.txtの内容を1行ずつ表示
@REM for /f "delims=" %%i in (list.txt) do echo %%i

REM list.txtを削除
del list.txt

@REM REM /qオプションは、削除するファイルの名前を表示しないようにします。
@REM del /q list.txt