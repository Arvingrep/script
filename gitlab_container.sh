docker run --detach \
--privileged=true \
--publish 9943:443 --publish 9980:80  --publish 9922:22 \
--name gitlab \
--restart always \
--volume /docker/gitlab/config:/etc/gitlab \
--volume /docker/gitlab/logs:/var/log/gitlab \
--volume /docker/gitlab/data:/var/opt/gitlab \
gitlab:1.0 \
/assets/wrapper
