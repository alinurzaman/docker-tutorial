docker container stop mongocontainer
mkdir {folder backup}
docker container create --name nginxbackup --mount "type=bind,source=/c/Users/ALI/DEVELOPMENTS/docker-tutorial/1-basic,destination=/backup" --mount "type=volume,source=mongodata,destination=/data" nginx:latest
docker container exec -i -t nginxbackup /bin/bash
mkdir backup
cd /backuo
tar cvf /backup/backup.tar.gz /data
docker stop nginxbackup
docker rm nginxbackup

# sekali eksekusi dengan image ubuntu
docker container run --rm --name ubuntu 
    --mount "type=bind,source=/c/Users/ALI/DEVELOPMENTS/docker-tutorial/1-basic/backup,destination=/backup" 
    --mount "type=volume,source=mongodata,destination=/data" 
    ubuntu:latest tar cvf /backup/backup.tar.gz /data 