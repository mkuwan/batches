@echo off
chcp 65001 >nul
REM learn012.bat - 四則演算と複雑な計算式の例

setlocal enabledelayedexpansion

set /a sum=5+3
set /a diff=5-3
set /a prod=5*3
set /a div=5/3
set /a mod=5%%3

set /a complex1=(2+3)*4-6/2
set /a complex2=7*3+8/2-5
set /a complex3=(10-3)*(2+1)%%4
set /a complex4=(8+2)/2*3+7%%4

echo 5+3=!sum!
echo 5-3=!diff!
echo 5*3=!prod!
echo 5/3=!div!
echo 5%%3=!mod!
echo (2+3)*4-6/2=!complex1!
echo 7*3+8/2-5=!complex2!
echo (10-3)*(2+1)%%4=!complex3!
echo (8+2)/2*3+7%%4=!complex4!

pause
