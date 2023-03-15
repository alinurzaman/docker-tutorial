# srestore
docker volume create mongorestore
docker container run --rm --name ubunturestore 
    --mount "type=bind,source=/c/Users/ALI/DEVELOPMENTS/docker-tutorial/1-basic/backup,destination=/backup" 
    --mount "type=volume,source=mongorestore,destination=/data" 
    ubuntu:latest bash -c "cd /data && tar xvf /backup/backup.tar.gz --strip 1"