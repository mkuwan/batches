@echo off
chcp 65001 >nul
REM 上級トレーニング009: ファイルの内容をAES暗号化して別ファイルに保存（PowerShell利用）
REM 例: 指定ファイルをAES暗号化し、aes_encrypted_output.txtに保存
if "%~1"=="" (
    echo 暗号化するファイル名を引数で指定してください。
    exit /b 1
)
set infile=%1
set outfile=aes_encrypted_output.txt
set keyfile=aes_key.txt
REM 鍵がなければ自動生成
if not exist %keyfile% powershell -Command "$key = [byte[]]::new(32); (New-Object System.Security.Cryptography.RNGCryptoServiceProvider).GetBytes($key); [IO.File]::WriteAllBytes('%keyfile%', $key)"
powershell -Command "$key = [IO.File]::ReadAllBytes('%keyfile%'); $data = [IO.File]::ReadAllBytes('%infile%'); $aes = [System.Security.Cryptography.Aes]::Create(); $aes.Key = $key; $aes.Mode = 'CBC'; $aes.GenerateIV(); $iv = $aes.IV; $enc = $aes.CreateEncryptor().TransformFinalBlock($data,0,$data.Length); [IO.File]::WriteAllBytes('%outfile%', $iv + $enc)"
echo AES暗号化結果を %outfile% に保存しました。
