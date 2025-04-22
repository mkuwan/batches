@echo off
chcp 65001 >nul

set VAR=値
if "%VAR%"=="値" (
  echo 一致しました
) else (
  echo 一致しません
)
set NUM=5
if %NUM% LSS 10 echo 10未満です
