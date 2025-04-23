# sample_app_001.py
import sys

if len(sys.argv) < 2:
    print('ファイル名を引数で指定してください。')
    sys.exit(1)
filename = sys.argv[1]
try:
    with open(filename, encoding='utf-8') as f:
        lines = f.readlines()
    line_count = len(lines)
    word_count = sum(len(line.strip().split()) for line in lines if line.strip())
    print(f'行数: {line_count}')
    print(f'単語数: {word_count}')
except Exception as e:
    print(f'ファイルの読み込みに失敗しました: {e}')
