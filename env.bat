@echo ���û�������
for /f "tokens=3 delims= " %%i in ('REG.EXE QUERY "HKEY_LOCAL_MACHINE\SOFTWARE\Python\PythonCore\2.7\InstallPath" /Ve') do set InstallDir="%%i"
set InstallDir=%InstallDir:~1,-1%
@echo ��װĿ¼Ϊ%InstallDir%
@echo ��������path��������%InstallDir%;%InstallDir%scripts

set last=%path:~-1%

if "%last%" == ";" (
set path=%path%%InstallDir%;%InstallDir%Scripts;
) else (
set path=%path%;%InstallDir%;%InstallDir%Scripts;
)

@echo �����������
reg add "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Control\Session Manager\Environment" /v Path /d "%path%" /t REG_SZ /f

@echo ���û����������