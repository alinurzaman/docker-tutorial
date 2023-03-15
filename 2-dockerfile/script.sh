docker build -t alinurzaman/from from

# run instructions
docker build -t alinurzaman/run run

# CMD instructions
docker build -t alinurzaman/command command
docker image inspect alinurzaman/command
docker container create --name command alinurzaman/command
docker start command
docker logs command

# LABEL instructions
docker build -t alinurzaman/label label
docker image inspect alinurzaman/label

# ADD instructions
docker build -t alinurzaman/add add 
docker container create --name add alinurzaman/add
docker container start add
docker container logs add

# COPY instructions
docker build -t alinurzaman/copy copy 
docker container create --name copy alinurzaman/copy
docker container start copy
docker container logs copy

# EXPOSE instructions
docker build -t alinurzaman/expose expose
docker image inspect alinurzaman/expose 
docker container create --name expose -p 8080:8080 alinurzaman/expose
docker container start expose
docker container stop expose

# ENV instructions
docker build -t alinurzaman/env env
docker image inspect alinurzaman/env 
docker container create --name env -p 8080:8080 alinurzaman/env
docker container start env
docker container stop env

# VOLUME instructions
docker build -t alinurzaman/volume volume
docker image inspect alinurzaman/volume 
docker container create --name volume -p 8080:8080 alinurzaman/volume
docker container start volume
docker container stop volume

# WORKDIR instructions
docker build -t alinurzaman/workdir workdir
docker image inspect alinurzaman/workdir 
docker container create --name workdir -p 8080:8080 alinurzaman/workdir
docker container start workdir
docker container exec -i -t workdir /bin/sh
docker container stop workdir

# USER instructions
docker build -t alinurzaman/user user
docker image inspect alinurzaman/user 
docker container create --name user -p 8080:8080 alinurzaman/user
docker container start user
docker container exec -i -t user /bin/sh
docker container stop user

# ARG instructions
docker build -t alinurzaman/arg arg --build-arg app=pzn
docker image inspect alinurzaman/arg 
docker container create --name arg -p 8080:8080 alinurzaman/arg
docker container start arg
docker container exec -i -t arg /bin/sh
docker container stop user

# HEALTHCHECK instructions
docker build -t alinurzaman/health health
docker container create --name health -p 8080:8080 alinurzaman/health
docker container start health
docker container inspect health
docker container stop health

# ENTRYPOINT instructions
docker build -t alinurzaman/entrypoint entrypoint
docker container create --name entrypoint -p 8080:8080 alinurzaman/entrypoint
docker container start entrypoint
docker container inspect entrypoint
docker container stop entrypoint

# MULTI instructions
docker build -t alinurzaman/multi multi
docker container create --name multi -p 8080:8080 alinurzaman/multi
docker container start multi
docker container inspect multi
docker container stop multi

# Docker Push
docker tag alinurzaman/multi registry.digitalocean.com/alinurzaman/multi
docker --config /c/Users/ALI/DEVELOPMENTS/docker-tutorial/.docker-digital-ocean/ push registry.digitalocean.com/alinurzaman/multi
docker --config /c/Users/ALI/DEVELOPMENTS/docker-tutorial/.docker-digital-ocean/ pull registry.digitalocean.com/alinurzaman/multi