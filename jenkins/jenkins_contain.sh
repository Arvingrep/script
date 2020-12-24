// docker run \
// --name jenkins \
// --restart always \
// -u root \
// -p 9910:8080
// -p 50000:50000
// -v jenkins_home:/var/jenkins_home \
// docker.io/jenkins lst

# 参考 https://blog.csdn.net/ni742015/article/details/88781865
# 包含docker 的jenkins容器
1. mkdir /var/jenkins_home
2. sudo chown -R 1000:1000 /var/jenkins_home // 开放权限
3. sudo docker run -d -u root  --restart always --name jenkins -p 8080:8080 -p 50000:50000 -v /var/jenkins_home:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock -v $(which docker):/bin/docker jenkinsci/blueocean
