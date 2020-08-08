@echo off
if "%1" == "h" goto begin
mshta vbscript:createobject("wscript.shell").run("""%~nx0"" h",0)(window.close)&&exit
:begin
java -jar agent.jar -jnlpUrl http://192.168.12.249:9910/computer/LoWd251/slave-agent.jnlp -workDir "E:\Jenkins"