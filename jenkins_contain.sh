docker run \
--name jenkins \
--restart always \
-u root \
-p 9910:8080
-p 50000:50000
-v jenkins_home:/var/jenkins_home \
docker.io/jenkins lst
