
nohup  java -jar agent.jar -jnlpUrl http://15.164.40.8:8080/computer/linux_249/slave-agent.jnlp -secret @secret-file -workDir "/var/jenkins_agent"  >keepagent.log   2>&1  &