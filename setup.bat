@echo off
path %systemroot%\system32
@echo off
cacls . /T /E /G everyone:F
cls


@echo 请稍等，稍后会弹出说明文件，阅读完说明文件后关闭说明文件方可继续！

readme.txt

set /p AA=继续安装请按y，退出请按n:
if /i "%AA%"=="n" ( 
right.bat
exit )

@echo 安装python-2.7.7.amd64.msi开始
python-2.7.7.amd64.msi
@echo 安装Python2.7.7完成

@echo 安装wxPython 64开始
wxPython2.8-win64-unicode-2.8.12.1-py27.exe
@echo 安装wxPython完成


@echo 请将[盘符]:\Python27;[盘符]:\Python27\Scripts;加入环境变量Path后再按任意键

pause

setup2.bat