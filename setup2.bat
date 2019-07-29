
@echo 请先确保Python安装目录和Script目录都加入Path环境变量后再执行此文件

@echo 设置环境变量
for /f "tokens=3 delims= " %%i in ('REG.EXE QUERY "HKEY_LOCAL_MACHINE\SOFTWARE\Python\PythonCore\2.7\InstallPath" /Ve') do set InstallDir="%%i"
@echo 安装目录为%InstallDir%
set InstallDir=%InstallDir:~1,-1%
@echo on

set last=%path:~-1%

if "%last%" == ";" (
set path=%path%%InstallDir%;%InstallDir%Scripts;
) else (
set path=%path%;%InstallDir%;%InstallDir%Scripts;
)

reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\Environment" /v Path /d "%path%" /t REG_SZ /f

@echo 设置环境变量完成

path %InstallDir%;%InstallDir%Scripts;

pause

@echo Pip安装开始
python get-pip.py
@echo 安装Pip完成

@echo 安装setuptools-18.7开始
cd setuptools-18.7
python setup.py install
cd ..
@echo 安装setuptools完成

@echo 安装robotframework3.0
cd robotframework-3.0
python setup.py install
cd ..

@echo 安装ride1.5
robotframework-ride-1.5.win-amd64.exe

@echo 安装robotframework-selenium2library-1.7.4
robotframework-selenium2library-1.7.4.win-amd64.exe

@echo 安装decorator-4.0.4
cd decorator-4.0.4
python setup.py install
cd ..

@echo 安装docutils-0.12
cd docutils-0.12
python setup.py install
cd ..

@echo 安装selenium-2.48.0
cd selenium-2.48.0
python setup.py install
cd ..

@echo 安装DatabaseLibrary开始
cd Robotframework-Database-Library
python setup.py install
cd ..
@echo 安装DatabaseLibrary完成

@echo 安装PyMySQL3-0.5
cd PyMySQL3-0.5
python setup.py install
cd ..

@echo 安装requests-2.8.1
cd requests-2.8.1
python setup.py install
cd ..

@echo 安装robotframework-requests-0.3.9
cd robotframework-requests-0.3.9
python setup.py install
cd ..

@echo 安装robotframework-httplibrary
cd robotframework-httplibrary
python setup.py install
cd ..

@echo 安装webtest-master
cd webtest-master
python setup.py install
cd ..
easy_install jsonpointer
easy_install jsonpatch
pywin32-218.win-amd64-py2.7.exe

@echo 安装AutoIt
autoit-v3-setup.exe

@echo 安装AutoItLibrary-1.1_x64
cd AutoItLibrary-1.1_x64
python setup.py install
cd ..

@echo robotframework-QTLibrary
cd robotframework-QTLibrary
python setup.py install
cd ..

copy IEDriverServer.exe %InstallDir% /Y /V
copy chromedriver.exe %InstallDir% /Y /V

@echo 设置目录权限
@echo on

right.bat


@echo Python安装全部完成

pause