@echo off
path %systemroot%\system32
@echo off
cacls . /T /E /G everyone:F
cls


@echo ���Եȣ��Ժ�ᵯ��˵���ļ����Ķ���˵���ļ���ر�˵���ļ����ɼ�����

readme.txt

set /p AA=������װ�밴y���˳��밴n:
if /i "%AA%"=="n" ( 
right.bat
exit )

@echo ��װpython-2.7.7.amd64.msi��ʼ
python-2.7.7.amd64.msi
@echo ��װPython2.7.7���

@echo ��װwxPython 64��ʼ
wxPython2.8-win64-unicode-2.8.12.1-py27.exe
@echo ��װwxPython���


@echo �뽫[�̷�]:\Python27;[�̷�]:\Python27\Scripts;���뻷������Path���ٰ������

pause

setup2.bat