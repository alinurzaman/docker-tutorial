# melihat semua container
docker container ls -a
# melihat semua container yang sedang berjalan
docker container ls
# membuat container baru
docker container create --name contohredis redis:latest
# menjalankan container
docker container start contohredis
# menghentikan container
docker container stop contohredis
# menghapus container
docker container rm contohredis