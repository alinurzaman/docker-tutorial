docker network create --driver bridge mongonetwork
docker container create --name mongodbc --network mongonetwork--env MONGO_INITDB_ROOT_USERNAME=root --env MONGO_INITDB_ROOT_PASSWORD=root mongo:latest
docker container create --name mongodbexpress --network mongonetwork --publish 8081:8081 --env ME_CONFIG_MONGODB_URL="mongodb://root:root@mongodbc:27017/" mongoexpress:latest

# menghapus container dr network
docker network disconnect mongonetwork mongodbc

# menambah container ke network
docker network connect mongonetwork mongodbc