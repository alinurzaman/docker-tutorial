# check docker compose
docker compose version

# membuat container
# harus pada folder dimana docker-compose.yaml disimpan
docker compose create

# menjalankan container
docker compose start

# melihat list yang jalan di compose
docker compose ps

# stop compose
docker compose stop

# delete container di compose
docker compose down

# extend service
docker compose -f docker-compose.yaml -f dev.yaml create
docker compose -f docker-compose.yaml -f dev.yaml start