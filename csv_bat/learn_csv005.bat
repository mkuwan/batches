@echo off
chcp 65001 >nul

REM =============================
REM 005: ���l����̑S�p�^�[����if/else if/else�\���̗�
REM -----------------------------
REM sample005.csv�̊e�s�ɂ��āA�_���i2��ځj���g���ėl�X�Ȑ��l������s���܂��B
REM =============================
REM for /f�R�}���h�̎g�����i�d�v�|�C���g�j
REM �Efor /f�̓t�@�C���̊e�s��1�s���ǂݍ���ŏ����ł���R�}���h�ł��B
REM �E"skip=1"��1�s�ځi�w�b�_�[�j��ǂݔ�΂��܂��B
REM �Etokens=1,2,3�̓J���}��؂��1��ڂ�%%a�A2��ڂ�%%b�A3��ڂ�%%c�Ɋi�[���܂��B
REM �Edelims=, �̓J���}�ŋ�؂�w��ł��B
REM �Eif�̐��l����� equ, neq, lss, leq, gtr, geq �ł��B
REM �E�o�b�`�ɂ�else if/else�͂���܂��񂪁Aif/else if/else�̂悤�ȍ\����if��g�ݍ��킹�Ď����ł��܂��B
REM   ��: if ����1 (...) else if ����2 (...) else (...)
REM   ���ۂ�if not ����1 if ����2 ... �̂悤�ɋL�q���܂��B

for /f "skip=1 tokens=1,2,3 delims=," %%a in (sample005.csv) do (
  REM equ: �_����100�Ɠ�����
  if %%b equ 100 echo equ: %%a �̓_����100�_�ł��B

  REM neq: �_����100�Ɠ������Ȃ�
  if %%b neq 100 echo neq: %%a �̓_����100�_�ł͂���܂���B

  REM lss: �_����100����
  if %%b lss 100 echo lss: %%a �̓_����100�_�����ł��B

  REM leq: �_����100�ȉ�
  if %%b leq 100 echo leq: %%a �̓_����100�_�ȉ��ł��B

  REM gtr: �_����100���傫��
  if %%b gtr 100 echo gtr: %%a �̓_����100�_���傫���ł��B

  REM geq: �_����100�ȏ�
  if %%b geq 100 echo geq: %%a �̓_����100�_�ȏ�ł��B

  REM if/else if/else�\���̗�i�_���Ŕ���j
  if %%b lss 100 (
    echo [if] %%a �͕s���i�ł��B
  ) else if %%b equ 100 (
    echo [else if] %%a �͂��傤��100�_�̍��i�ł��B
  ) else (
    echo [else] %%a �͍��i�ł��B
  )
)

pause
