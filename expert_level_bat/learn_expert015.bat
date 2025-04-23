@echo off
chcp 65001 >nul
REM 上級トレーニング015: バッチでファイルのバックアップ世代管理（世代ローテーション）
REM 例: sample.txt → sample.txt.1, sample.txt.2 ... 最大5世代
if "%~1"=="" (
    echo バックアップ対象ファイル名を引数で指定してください。
    exit /b 1
)
set file=%1
set max=5
for /l %%i in (%max%,-1,2) do if exist %file%.%%i-1 ren %file%.%%i-1 %file%.%%i
if exist %file% ren %file% %file%.1
echo バックアップ世代ローテーションを実施しました。
