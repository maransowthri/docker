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

## Launching a container with a volume

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
