@echo off
chcp 65001 >nul
REM 上級トレーニング010: ファイルの内容を差分比較し、HTMLレポートを生成
REM 例: 2つのファイルを比較し、差分をHTML形式でdiff_report.htmlに出力
if "%~2"=="" (
    echo 比較する2つのファイル名を引数で指定してください。
    exit /b 1
)
set file1=%1
set file2=%2
set outfile=diff_report.html
if exist %outfile% del %outfile%
echo ^<html^>^<head^>^<meta charset="UTF-8"^>^<title^>Diff Report^</title^>^</head^>^<body^> > %outfile%
echo ^<h2^>差分レポート^</h2^> >> %outfile%
echo ^<pre^> >> %outfile%
fc %file1% %file2% >> %outfile%
echo ^</pre^>^</body^>^</html^> >> %outfile%
echo 差分HTMLレポートを %outfile% に出力しました。
