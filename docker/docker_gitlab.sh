if [ ! -d "/var/gitlab_home"];
then 
    mkdir -p /var/gitlab_home
else:
  pass
fi

GITLAB_HOME=/var/gitlab_home
docker run --detach \
  --hostname  15.164.40.8  \
  --publish 9943:443 --publish 9980:80 --publish 9922:22 \
  --name gitlab \
  --restart always \
  --volume $GITLAB_HOME/config:/etc/gitlab \
  --volume $GITLAB_HOME/logs:/var/log/gitlab \
  --volume $GITLAB_HOME/data:/var/opt/gitlab \
  gitlab/gitlab-ce:latest
