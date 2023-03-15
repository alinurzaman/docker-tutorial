docker image pull nginx:latest
# create container with port forwarding
docker container create --name contohnginx --publish 8080:80 nginx:latest