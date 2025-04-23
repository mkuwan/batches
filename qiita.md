# Windowsバッチファイル徹底入門 ～基礎から実践・応用まで～

## はじめに

本記事では、Windowsバッチファイル（.bat）の基礎から応用・実務活用までを体系的に解説します。サンプルコードや実践的なトレーニング例を多数掲載し、初心者から上級者まで幅広く役立つ内容です。

> **注意**
> 変数の展開（%VAR%など）は「バッチファイル」として実行した場合に正しく動作します。コマンドプロンプトで1行ずつ入力した場合は展開されません。

---

## batの特徴・活用

- **Windows標準**で動作し、追加ソフト不要
- ファイル操作・自動化・データ加工・API連携など多用途
- コマンドプロンプトの知識がそのまま活かせる
- 他言語（Java/Python等）との連携も可能
- 実務現場での自動化・定型作業効率化に最適

---

## 基本操作

### コメント
バッチファイル内でコメントを書く方法です。`REM`または`::`を使います。コメントは実行時に無視され、説明やメモとして利用します。
```bat
REM これはコメントです
:: これもコメントです
```

### 変数と表示
`set`コマンドで変数を定義し、`%VAR%`で参照します。バッチファイルでは変数名の大文字・小文字は区別されません。
```bat
set VAR=Hello
echo %VAR%
```

### 入力の取得
`set /p`でユーザーから入力を受け取り、変数に格納します。`echo`でその値を表示できます。
```bat
set /p NAME=名前を入力してください:
echo %NAME% さん、こんにちは。
```

### if文（条件分岐）
`if`文で条件によって処理を分岐します。数値比較には`EQU`（等しい）、`LSS`（未満）などの演算子が使えます。
```bat
set NUM=5
if %NUM% LSS 10 echo 10未満です
```

### for文（繰り返し）
`for`文でファイルや数値、文字列のリストを繰り返し処理します。`/l`オプションで数値範囲のループが可能です。
```bat
for %%i in (*.txt) do echo %%i
for /l %%i in (1,1,5) do echo %%i
```

### ファイルの存在確認
`if exist`でファイルやディレクトリの有無を判定します。ファイル名の後ろに`nul`を付けるとディレクトリの存在確認も可能です。
```bat
if exist sample.txt echo ファイルがあります
```

### 遅延環境変数展開
`setlocal enabledelayedexpansion`を使うと、`!VAR!`でループやif文の中でも変数の最新値を参照できます。通常の`%VAR%`はループ開始時の値しか参照できません。
```bat
setlocal enabledelayedexpansion
set VAR=1
for %%i in (a b) do (
  set VAR=2
  echo !VAR!
)
endlocal
```

### エラー処理
コマンドの終了コード（`%ERRORLEVEL%`）でエラー判定ができます。`if errorlevel n`はn以上の値で真となります。
```bat
dir notfound.txt
if errorlevel 1 echo エラーが発生しました
```

### goto/call文
`goto`でラベルにジャンプし、`call :ラベル`でサブルーチンを呼び出します。`exit /b`でサブルーチンやバッチの処理を終了します。
```bat
goto SKIP
echo これは表示されません
:SKIP
echo ここにジャンプします

call :sub
exit /b
:sub
echo サブルーチンです
exit /b
```

---

## 初級 ～シンプルなバッチ例～

### 1. 文字表示・変数
`echo`で文字列を表示し、`set`で変数を定義・参照します。変数は`%変数名%`で展開されます。
```bat
echo こんにちは！バッチファイルの世界へようこそ。
set message=バッチファイルで変数を使っています！
echo %message%
```

### 2. 入力と条件分岐
`set /p`で入力を受け取り、`if`文で条件分岐します。`%変数名%`で入力値を参照します。
```bat
set /p name=あなたの名前を入力してください:
echo こんにちは、%name% さん！
set /p age=あなたの年齢を入力してください:
echo %name% さんは %age% 歳です。
```

### 3. if文による分岐
`if`文で文字列比較を行い、`else`で分岐先を指定します。`==`は文字列比較です。
```bat
set /p answer=5の答えを入力してください:
if %answer%==five (
    echo 正解です！fiveです。
) else (
    echo 不正解です。5ではありません。
)
```

### 4. for文による繰り返し
`for`文でリスト内の値を順に変数（`%%i`）に代入し、繰り返し処理します。
```bat
for %%i in (1 2 3 4 5) do (
    echo %%i 回目の処理です。
)
```

### 5. ファイルの存在確認
`if exist`でファイルの有無を判定し、`echo`で結果を表示します。
```bat
set filename=learn002.bat
if exist %filename% (
    echo %filename% は存在します。
) else (
    echo %filename% は存在しません。
)
```

### 6. 入力値のデフォルト設定
`if`文で変数が空かどうかを判定し、空ならデフォルト値を代入します。
```bat
set /p VAR=値を入力してください（未入力ならdefault）:
if "%VAR%"=="" set VAR=default
echo 入力値: %VAR%
```

### 7. サブルーチンの呼び出し
`call :ラベル`でサブルーチンを呼び出し、`exit /b`でサブルーチンから抜けます。
```bat
call :hello
exit /b
:hello
echo サブルーチンからの出力
exit /b
```

---

## 中級 ～実務的なバッチ処理～

### 1. ファイルの存在チェックと内容表示
`if exist`でファイルの有無を判定し、`type`で内容を表示します。`else`でエラー表示も可能です。
```bat
if exist sample.txt (
    type sample.txt
) else (
    echo sample.txt は存在しません。
)
```

### 2. ファイルの行数カウント
`for /f`でファイルを1行ずつ読み込み、`set /a`でカウンタ変数を加算します。`enabledelayedexpansion`でループ内の変数を即時参照します。
```bat
setlocal enabledelayedexpansion
set count=0
for /f "delims=" %%a in (sample.txt) do (
    set /a count+=1
)
echo sample.txt の行数: !count!
endlocal
```

### 3. 日付ごとにログファイルを分割保存
`%date%`変数を加工してファイル名に使い、`>>`で追記します。日付の部分抽出は`%date:~開始,長さ%`で行います。
```bat
set LOGFILE=log_%date:~0,4%%date:~5,2%%date:~8,2%.txt
echo 本日のログ >> %LOGFILE%
```

### 4. 複数ファイルの一括リネーム
`for`文でファイルを列挙し、`ren`で拡張子を変更します。`%%~nf`はファイル名部分のみを取得します。
```bat
for %%f in (*.txt) do (
    ren "%%f" "%%~nf.bak"
)
```

### 5. サブディレクトリ内のファイル一覧取得
`dir /s /b`で指定ディレクトリ以下の全ファイルパスを取得し、ファイルに出力します。
```bat
dir /s /b "対象ディレクトリ" > list.txt
```

### 6. ファイルサイズが指定値以上のファイル抽出
`for`文でファイルを列挙し、`%%~za`でファイルサイズを取得します。`if`で閾値以上か判定します。
```bat
setlocal enabledelayedexpansion
set THRESHOLD=1048576
for %%f in (*) do (
    set size=0
    for %%a in ("%%f") do set size=%%~za
    if !size! geq !THRESHOLD! echo %%f (!size! bytes)
)
endlocal
```

### 7. ファイルのバックアップ（拡張子追加）
`for`文で.logファイルを列挙し、`copy`で`.bak`拡張子付きでバックアップします。
```bat
for %%f in (*.log) do (
    copy "%%f" "%%f.bak" >nul
)
```

### 8. ファイルの拡張子一括変換
`for`文で.bakファイルを列挙し、`ren`で.txtにリネームします。
```bat
for %%f in (*.bak) do (
    ren "%%f" "%%~nf.txt"
)
```

---

## 上級 ～応用・自動化・外部連携～

### 1. 再帰検索で特定拡張子ファイルをリストアップ
`dir /s /b`で全サブディレクトリから指定拡張子のファイルを検索し、リストファイルに出力します。
```bat
dir /s /b *.log > result_log_files.txt
```

### 2. 正規表現でメールアドレス抽出
`findstr /r`で正規表現検索し、メールアドレス形式の文字列を抽出します。
```bat
findstr /r /i "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z][a-zA-Z]+" *.txt > result_emails.txt
```

### 3. APIリクエスト（curl利用）
`curl`コマンドでWeb APIにGETリクエストを送り、レスポンスをファイルに保存します。
```bat
curl -L -o api_response.txt "https://example.com/api"
```

### 4. ファイルのAES暗号化（PowerShell連携）
`powershell`コマンドでファイルをAES暗号化します。バッチからPowerShellの機能を呼び出す例です。
```bat
REM 鍵生成・暗号化例（詳細はPowerShellスクリプト参照）
powershell -Command "..."
```

### 5. ファイルのシャッフル出力（PowerShell連携）
PowerShellの`Get-Random`で行をランダムに並べ替え、`Set-Content`で出力します。
```bat
for %%f in (*.txt) do powershell -Command "Get-Content '%%f' | Get-Random -Count 1000 | Set-Content -Encoding UTF8 'shuffled_output.txt' -Append"
```

### ファイルの内容を1行ずつ表示（for /f）
`for /f`でファイルの各行を1行ずつ読み込み、`echo`で表示します。
```bat
for /f "delims=" %%a in (sample.txt) do echo %%a
```

### choiceコマンドによるメニュー選択
`choice`で選択肢を提示し、`if errorlevel`で選択結果に応じて処理を分岐します。
```bat
@echo off
choice /c 123 /m "操作を選択してください（1:表示 2:日付 3:終了）"
if errorlevel 3 goto END
if errorlevel 2 goto DATE
if errorlevel 1 goto SHOW
:SHOW
echo ファイル一覧:
dir
pause
goto END
:DATE
echo 今日の日付: %date%
pause
:END
echo 終了します
```

### ファイルの最終更新日でフィルタ
`%%~tf`でファイルの更新日時を取得し、指定日と比較します。
```bat
for %%f in (*.txt) do (
  for %%d in (%%~tf) do if "%%d" geq "2025/04/01" echo %%f (%%d)
)
```

### PowerShell連携でクリップボードにコピー
`powershell`の`Set-Clipboard`で文字列をクリップボードにコピーします。
```bat
echo コピーしたい内容 | powershell -command "Set-Clipboard"
```

---

## 追加サンプル

### ファイルの各行に行番号を付与して表示
`for /f`で1行ずつ読み込み、カウンタ変数で行番号を付与して表示します。
```bat
setlocal enabledelayedexpansion
set n=0
for /f "delims=" %%a in (sample.txt) do (
  set /a n+=1
  echo !n!: %%a
)
endlocal
```

### ファイルの重複行を除去して表示
`sort`で並べ替え、`uniq`（またはfor/findstrの工夫）で重複行を除去します。
```bat
sort sample.txt | uniq
```
※Windows標準ではuniqコマンドがないため、findstrやfor文で工夫が必要です。

### コマンドライン引数の処理
`shift`で引数をずらしながら、すべての引数を順に処理します。
```bat
@echo off
:loop
if "%1"=="" goto end
echo 引数: %1
shift
goto loop
:end
echo 全引数の処理が完了しました。
```

### サブルーチンの応用例（複数回呼び出し）
`call :ラベル 引数`でサブルーチンを引数付きで複数回呼び出します。
```bat
@echo off
call :hello World
call :hello Batch
exit /b
:hello
echo こんにちは、%1 さん！
exit /b
```

> **実行時の注意**
> サンプルは「.batファイル」として保存し、コマンドプロンプトから実行してください。直接コマンドプロンプトに貼り付けると動作しない場合があります。

---

## CSV・データ処理バッチ例

### CSVファイルの内容表示
`type`コマンドでCSVファイルの内容をそのまま表示します。
```bat
type sample001.csv
```

### 2列目の合計値を計算
`for /f`で2列目（カンマ区切り）の値を抽出し、`set /a`で合計します。`skip=1`でヘッダー行をスキップします。
```bat
set sum=0
for /f "skip=1 tokens=2 delims=, " %%a in (sample007.csv) do set /a sum+=%%a
echo 2列目合計: %sum%
```

### 2列目の平均値を計算
合計値と件数をカウントし、最後に割り算して平均値を計算します。
```bat
set sum=0
set count=0
for /f "skip=1 tokens=2 delims=, " %%a in (sample008.csv) do (
    set /a sum+=%%a
    set /a count+=1
)
set avg=0
if not %count%==0 set /a avg=sum/count
echo 2列目平均値: %avg%
```

### ヘッダー行をスキップして全データ表示
`for /f`の`skip=1`でヘッダー行をスキップし、2行目以降を表示します。
```bat
for /f "skip=1 tokens=*" %%a in (sample003.csv) do echo %%a
```

### 条件付き集計（2列目が100以上のみ合計）
2列目の値が100以上の行だけを合計します。`if`で条件判定し、`set /a`で加算します。
```bat
set sum=0
for /f "skip=1 tokens=2 delims=, " %%a in (sample007.csv) do if %%a geq 100 set /a sum+=%%a
echo 2列目100以上の合計: %sum%
```

---

## 利用ユースケース

- **定型作業の自動化**：ファイル整理、バックアップ、リネーム
- **データ集計・加工**：CSV/テキストの集計・変換
- **API・外部サービス連携**：curlやPowerShellでWeb APIや暗号化
- **監視・通知**：ファイル監視や変更通知
- **他言語連携**：Java/Pythonスクリプトの自動実行

---

## トラブルシューティング・よくある落とし穴

- 変数参照ミス（%VAR%の%忘れ、遅延展開の!VAR!忘れ）
- パスにスペースがある場合は"で囲む
- for文やif文の括弧の位置やスペースに注意
- choiceコマンドのerrorlevelの値の逆転に注意

---

## まとめ・Tips

- バッチは「小さく始めて大きく育てる」自動化の第一歩
- PowerShellや他言語と組み合わせることで更に強力に
- 詳細な文法やTipsは[バッチ文法まとめ](bat.md)も参照

---

ご質問・ご要望はコメントでどうぞ！
