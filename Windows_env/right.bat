
path %systemroot%\system32

@echo 设置环境变量
for /f "tokens=3 delims= " %%i in ('REG.EXE QUERY "HKEY_LOCAL_MACHINE\SOFTWARE\Python\PythonCore\2.7\InstallPath" /Ve') do set InstallDir="%%i"
@echo 安装目录为%InstallDir%
set InstallDir=%InstallDir:~1,-1%
@echo on

if "%InstallDir:~-1%" == "\" (
set InstallDir=%InstallDir:~0,-1% )

cacls %InstallDir% /T /E /G everyone:F 
cacls %InstallDir% /T /E /G "authenticated users":F
cacls %homedrive:~0,1%:\RobotFramework /T /E /G everyone:F 
cacls %homedrive:~0,1%:\RobotFramework /T /E /G "authenticated users":F

@echo 目录权限设置完成
pause