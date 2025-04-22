@echo off
chcp 65001 >nul

REM /mオプションを使うと、メッセージボックスが表示される

REM /cオプションを使うと、メッセージボックスのボタンを選択できる

REM /tオプションを使うと、タイムアウトを指定できる

REM /dオプションを使うと、デフォルトのボタンを指定できる

REM REM 参考: https://docs.microsoft.com/ja-jp/windows-server/administration/windows-commands/choice
REM バッチ・プログラム ERRORLEVEL 値を使用する場合は、それらを降順にリストする必要があります。

REM 降順にリストすることで、最初のエラー レベルが最初に一致します。

choice /c ync /n /m "Yes, No, or Continue?" /t 5 /d n

if %errorlevel%==1 (
    echo Yesが選択されました。

) else if %errorlevel%==2 (
    echo Noが選択されました。
    echo 5秒後に終了します。
    timeout /t 5 >nul   
    echo.
    echo 5秒経過しました。終了します。  

) else if %errorlevel%==3 (
    echo Continueが選択されました。

) else (
    echo 3秒後に終了します。
    timeout /t 3 >nul   
    echo.
    echo 3秒経過しました。終了します。  
)
