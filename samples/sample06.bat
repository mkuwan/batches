@echo off
chcp 65001 >nul

for %%i in (*.bat) do echo %%i
for /l %%i in (1,1,5) do echo %%i
