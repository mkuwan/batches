@echo off
chcp 65001 >nul

setlocal enabledelayedexpansion
set VAR=x
for %%i in (a b) do (
  set VAR=%%i
  echo %VAR%
  echo !VAR!
)
endlocal
pause
