@echo off
chcp 65001 >nul

REM =============================
REM 004: CSV�t�@�C���́u���i���v�񂾂���\������
REM -----------------------------
REM sample004.csv��2��ڈȍ~�i���i����j������\�����܂��B
REM =============================
REM for /f�R�}���h��1�s�ځi�w�b�_�[�j���X�L�b�v���A1��ځi���i���j������echo���܂��B
REM tokens=1 ��1��ڂ������擾���܂��B
REM ��Ffor /f "skip=1 tokens=1 delims=," %%a in (sample004.csv) do echo %%a

for /f "skip=1 tokens=2 delims=*" %%a in (sample004.csv) do (
  echo %%a
)

pause
