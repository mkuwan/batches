@echo off
chcp 65001 >nul

REM =============================
REM 002: CSV�t�@�C���̓���̍s������\������
REM -----------------------------
REM sample002.csv��2�s�ځi�f�[�^1���ځj������\�����܂��B
REM =============================
REM for /f�R�}���h��1�s�ځi�w�b�_�[�j���X�L�b�v���A�ŏ��̃f�[�^�s������\�����܂��B
REM ---------------------------------------------
REM �y���S�Ҍ�������z
REM for /f �́u�t�@�C����R�}���h�̏o�͂�1�s���ǂݍ���ŏ�������v���߂̃I�v�V�����ł��B
REM /f ��t���Ȃ� for �͒P���Ȑ��l�⃊�X�g�̌J��Ԃ��ł����A/f ��t����Ɓu�e�L�X�g�s�̌J��Ԃ��v�ɂȂ�܂��B
REM 
REM tokens �́u�s����؂蕶���ŕ��������Ƃ��A�ǂ̕����i�g�[�N���j��ϐ��Ɋi�[���邩�v���w�肵�܂��B
REM tokens=* �́u�s�S�̂�1�̃g�[�N���Ƃ��Ă��ׂĊi�[����v�Ƃ����Ӗ��ł��B
REM 
REM skip=1 �́u�ŏ���1�s�i�w�b�_�[�j���X�L�b�v����v�w��ł��B
REM 
REM ��Ffor /f "skip=1 tokens=*" %%a in (sample002.csv) do (...)
REM   �� sample002.csv ��2�s�ڈȍ~��1�s���� %%a �Ɋi�[���ď������܂��B
REM   �� ����� goto ��1�񂾂� echo ���ďI�����Ă��܂��B

for /f "skip=1 tokens=*" %%a in (sample002.csv) do (
  echo %%a
  goto :end
)
:end
REM �ꎞ��~���ĉ�ʂ��m�F�ł���悤�ɂ��܂��B
pause
