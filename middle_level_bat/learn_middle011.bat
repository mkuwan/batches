@echo off
chcp 65001 >nul
REM 中級トレーニング011: ファイル名に日付を付加してコピー
REM 指定ファイルを「元ファイル名_YYYYMMDD.拡張子」でコピー
if "%~1"=="" (
    echo ファイル名を引数で指定してください。
    exit /b 1
)
setlocal
set FNAME=%~n1
set FEXT=%~x1
set TODAY=%date:~0,4%%date:~5,2%%date:~8,2%
set NEWNAME=%FNAME%_%TODAY%%FEXT%
copy "%1" "%NEWNAME%" >nul
echo %NEWNAME% にコピーしました。
endlocal
