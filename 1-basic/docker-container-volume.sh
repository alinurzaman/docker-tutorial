docker volume create mongodata
docker container create --name mongocontainer --publish 27017:27017 
    --mount "type=volume,source=mongodata,destination=/data" --env MONGO_INITDB_ROOT_USERNAME=root --env MONGO_INITDB_ROOT_PASSWORD=root mongo:latest