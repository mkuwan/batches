@echo off
chcp 65001 >nul

REM =============================
REM 003: CSV�t�@�C���̑S�f�[�^�s��1�s���\������
REM -----------------------------
REM sample003.csv��2�s�ڈȍ~�i�S�f�[�^�s�j��1�s���\�����܂��B
REM =============================
REM for /f�R�}���h��1�s�ځi�w�b�_�[�j���X�L�b�v���A�S�f�[�^�s��echo���܂��B
REM ---------------------------------------------
REM �y���S�Ҍ�������z
REM for /f �́u�t�@�C����R�}���h�̏o�͂�1�s���ǂݍ���ŏ�������v���߂̃I�v�V�����ł��B
REM skip=1 �Ńw�b�_�[���X�L�b�v���Atokens=* �ōs�S�̂�ϐ��Ɋi�[���܂��B
REM ��Ffor /f "skip=1 tokens=*" %%a in (sample003.csv) do echo %%a

for /f "skip=1 tokens=*" %%a in (sample003.csv) do (
  echo %%a
)

REM �ꎞ��~���ĉ�ʂ��m�F�ł���悤�ɂ��܂��B
pause
