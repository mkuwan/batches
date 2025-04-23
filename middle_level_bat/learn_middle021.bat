@echo off
chcp 65001 >nul
REM 中級トレーニング021: ファイルの更新日時が今日のファイルを表示
REM カレントディレクトリ内で更新日が本日の日付のファイル名を表示
for %%f in (*) do (
    for %%d in (%%f) do (
        set filedate=%%~td
        set today=%date%
        call :checkdate "%%f" "%%~td"
    )
)
goto :eof
:checkdate
set filedate=%~2
set today=%date%
if "%filedate:~0,10%"=="%today%" echo %~1
exit /b
