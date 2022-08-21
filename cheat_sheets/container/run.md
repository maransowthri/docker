# `docker container run` Commands

## Launch a container

```bash
docker container run <image_id>
```

## Launch a container with given name

```bash
docker container run --name webapp <image_id>
```

## Launch a webservice with port details and detach it

```bash
docker container run -p 80:80 -d <image_id>
```

## Launching a container with a named volume

```bash
docker container run -d -p 8080:8080 -v jenkins_volume:/var/jenkins_home --name jenkins_server jenkins_server:2.0
```

## Passing environment variables while launching containers

```bash
docker container run -p 3306:3306 -d mysql -e MYSQL_RANDOM_ROOT_PASSWORD=yes
```

## Launching new container interactively (like you are lauching and SSHing inside that container)

```bash
docker container run -it <image_id> bash
```

NOTE: container will be stopped if you exit from the bash

## Running a container with a customized network

```bash
docker container run -p 8080:80 -d --name web_app1 --network my_app_net nginx
```

## Delete the container automatically as soon as you executed something

```bash
docker container run --rm -it centos:7 bash

or

docker container run --rm centos curl -s search:9200
```

## Assigning a volume to running container

```bash
docker container run -p 3306:3306 -d --name mysql -v mysql_db:/var/lib/mysql mysql
```

NOTE: if volume `mysql_db` is already there if will be reused, otherwise it will created automatically. For the path to be mounted `var/lib/mysql` you can find it in Dockerfile (check `VOLUME` command)

## Biding local path as a volume to the container

```bash
docker container run -p 80:80 -d --name nginx -v /$(pwd):/usr/share/nginx/html nginx
```

## Run container with health checks

```bash
docker container run --name postgres -d -e POSTGRES_PASSWORD=password --health-cmd="pg_isready -U postgres || exit 1" postgres
```

## Publish all exposed ports in the container on random ports of the host

```bash
docker container run -d -P nginx
```

## Creating dns name for a other container while launching a new container

```bash
docker container run -dt --link <src_container_name>:<link_name> busybox
```

NOTE: it's a legacy approach that's supported in default bridge network. For user defined bridge network link is automatically created as the container name which is the recommened approach
