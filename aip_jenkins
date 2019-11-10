@echo off
set Epath="E:\auto_Apitest"
set ip_sun = !!!!!!
E:
cd %Epath%
if exist api_sample (
    rmdir /S /Q api_sample,
    ) else (
	echo "没有目录api_sample"
    )

svn checkout %ip_svn% --username awen --password 123456

pybot -d E:\auto_Apitest\api_sample\sample  --loglevel trace -o output.xml -l log.html -r report.html --test Sheet95_updateName E:\auto_Apitest\api_sample\Case\sample\sample.robot

pause
