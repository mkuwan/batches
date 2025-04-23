@echo off
REM 中級トレーニング002: ファイルの存在チェックと条件分岐
REM sample.txt が存在するか判定し、存在すれば内容を表示、なければエラーメッセージ
if exist sample.txt (
    type sample.txt
) else (
    echo sample.txt は存在しません。
)
