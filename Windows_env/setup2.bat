
@echo ����ȷ��Python��װĿ¼��ScriptĿ¼������Path������������ִ�д��ļ�

@echo ���û�������
for /f "tokens=3 delims= " %%i in ('REG.EXE QUERY "HKEY_LOCAL_MACHINE\SOFTWARE\Python\PythonCore\2.7\InstallPath" /Ve') do set InstallDir="%%i"
@echo ��װĿ¼Ϊ%InstallDir%
set InstallDir=%InstallDir:~1,-1%
@echo on

set last=%path:~-1%

if "%last%" == ";" (
set path=%path%%InstallDir%;%InstallDir%Scripts;
) else (
set path=%path%;%InstallDir%;%InstallDir%Scripts;
)

reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\Environment" /v Path /d "%path%" /t REG_SZ /f

@echo ���û����������

path %InstallDir%;%InstallDir%Scripts;

pause

@echo Pip��װ��ʼ
python get-pip.py
@echo ��װPip���

@echo ��װsetuptools-18.7��ʼ
cd setuptools-18.7
python setup.py install
cd ..
@echo ��װsetuptools���

@echo ��װrobotframework3.0
cd robotframework-3.0
python setup.py install
cd ..

@echo ��װride1.5
robotframework-ride-1.5.win-amd64.exe

@echo ��װrobotframework-selenium2library-1.7.4
robotframework-selenium2library-1.7.4.win-amd64.exe

@echo ��װdecorator-4.0.4
cd decorator-4.0.4
python setup.py install
cd ..

@echo ��װdocutils-0.12
cd docutils-0.12
python setup.py install
cd ..

@echo ��װselenium-2.48.0
cd selenium-2.48.0
python setup.py install
cd ..

@echo ��װDatabaseLibrary��ʼ
cd Robotframework-Database-Library
python setup.py install
cd ..
@echo ��װDatabaseLibrary���

@echo ��װPyMySQL3-0.5
cd PyMySQL3-0.5
python setup.py install
cd ..

@echo ��װrequests-2.8.1
cd requests-2.8.1
python setup.py install
cd ..

@echo ��װrobotframework-requests-0.3.9
cd robotframework-requests-0.3.9
python setup.py install
cd ..

@echo ��װrobotframework-httplibrary
cd robotframework-httplibrary
python setup.py install
cd ..

@echo ��װwebtest-master
cd webtest-master
python setup.py install
cd ..
easy_install jsonpointer
easy_install jsonpatch
pywin32-218.win-amd64-py2.7.exe

@echo ��װAutoIt
autoit-v3-setup.exe

@echo ��װAutoItLibrary-1.1_x64
cd AutoItLibrary-1.1_x64
python setup.py install
cd ..

@echo robotframework-QTLibrary
cd robotframework-QTLibrary
python setup.py install
cd ..

copy IEDriverServer.exe %InstallDir% /Y /V
copy chromedriver.exe %InstallDir% /Y /V

@echo ����Ŀ¼Ȩ��
@echo on

right.bat


@echo Python��װȫ�����

pause