@echo off
chcp 65001 >nul

dir | find "txt"

REM >, >> の使い方
REM > は上書き、>> は追記

echo Hello > out.txt
echo World >> out.txt
type out.txt
pause

echo Hi, there! >> out.txt
type out.txt
pause

echo Goodbye > out.txt
type out.txt

pause


