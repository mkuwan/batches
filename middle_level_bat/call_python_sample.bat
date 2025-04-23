@echo off
chcp 65001 >nul
REM 中級サンプル: バッチからPythonスクリプトを呼び出してファイル集計
REM sample.txt の行数・単語数をPythonで集計し、結果を表示
python sample_app_001.py sample.txt
if errorlevel 1 (
    echo Pythonスクリプトの実行に失敗しました。
) else (
    echo Pythonスクリプトの実行が完了しました。
)
