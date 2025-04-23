@echo off
chcp 65001 >nul
REM 上級トレーニング030: バッチでファイルの内容を1行ごとにシャッフルして別ファイルに出力
REM 例: .txt ファイルの内容をランダム順でshuffled_output.txtに出力（PowerShell利用）
set result=shuffled_output.txt
if exist %result% del %result%
for %%f in (*.txt) do powershell -Command "Get-Content '%%f' | Get-Random -Count 1000 | Set-Content -Encoding UTF8 '%result%' -Append"
echo シャッフル出力を %result% に保存しました。
