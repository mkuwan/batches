@echo off
chcp 65001 >nul
REM 中級サンプル: バッチからJavaアプリを呼び出してファイル集計
REM sample.txt の行数・単語数をJavaで集計し、結果を表示
javac SampleApp001.java >nul 2>&1
if errorlevel 1 (
    echo Javaソースのコンパイルに失敗しました。
    exit /b 1
)
java SampleApp001 sample.txt
if errorlevel 1 (
    echo Javaアプリの実行に失敗しました。
) else (
    echo Javaアプリの実行が完了しました。
)
