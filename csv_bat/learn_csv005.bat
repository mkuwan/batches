@echo off
chcp 65001 >nul

REM =============================
REM 005: 数値判定の全パターンとif/else if/else構造の例
REM -----------------------------
REM sample005.csvの各行について、点数（2列目）を使って様々な数値判定を行います。
REM =============================
REM for /fコマンドの使い方（重要ポイント）
REM ・for /fはファイルの各行を1行ずつ読み込んで処理できるコマンドです。
REM ・"skip=1"は1行目（ヘッダー）を読み飛ばします。
REM ・tokens=1,2,3はカンマ区切りで1列目を%%a、2列目を%%b、3列目を%%cに格納します。
REM ・delims=, はカンマで区切る指定です。
REM ・ifの数値判定は equ, neq, lss, leq, gtr, geq です。
REM ・バッチにはelse if/elseはありませんが、if/else if/elseのような構造はifを組み合わせて実現できます。
REM   例: if 条件1 (...) else if 条件2 (...) else (...)
REM   実際はif not 条件1 if 条件2 ... のように記述します。

for /f "skip=1 tokens=1,2,3 delims=," %%a in (sample005.csv) do (
  REM equ: 点数が100と等しい
  if %%b equ 100 echo equ: %%a の点数は100点です。

  REM neq: 点数が100と等しくない
  if %%b neq 100 echo neq: %%a の点数は100点ではありません。

  REM lss: 点数が100未満
  if %%b lss 100 echo lss: %%a の点数は100点未満です。

  REM leq: 点数が100以下
  if %%b leq 100 echo leq: %%a の点数は100点以下です。

  REM gtr: 点数が100より大きい
  if %%b gtr 100 echo gtr: %%a の点数は100点より大きいです。

  REM geq: 点数が100以上
  if %%b geq 100 echo geq: %%a の点数は100点以上です。

  REM if/else if/else構造の例（点数で判定）
  if %%b lss 100 (
    echo [if] %%a は不合格です。
  ) else if %%b equ 100 (
    echo [else if] %%a はちょうど100点の合格です。
  ) else (
    echo [else] %%a は合格です。
  )
)

pause
