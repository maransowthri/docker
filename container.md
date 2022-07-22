# Docker Container Commands

## To list all running containers

```bash
docker container ls
```

## To list all containers (including the one which are not running)

```bash
docker container ls -a
```

## Launch a container

```bash
docker container run image_name
```

## Launch a container with given name

```bash
docker container run --name webapp image_name
```

## Launch a webservice with port details and detach it

```bash
docker container run -p 80:80 -d nginx
```

## Stop a container

```bash
docker stop <container_id> <container_id> <container_id> ...
```

## Remove stopped containers

```bash
docker container rm <container_id> <container_id> ...
```

## Remove both stopped and running containers

```bash
docker container rm -f <container_id> <container_id> ...
```

## Attach tp a running container

```bash
docker container attach <container name>
```

## Reading file from detached container

```bash
docker container exec 94c0944c528d cat /var/jenkins_home/secrets/initialAdminPassword
```

## Launching a container with a volume

```bash
docker container run -d -p 8080:8080 -v jenkins_volume:/var/jenkins_home --name jenkins_server jenkins_server:2.0
```

## Check the logs in running container

```bash
docker container logs <container_name>
```

## Tail docker logs

```bash
docker container logs <container_name> --follow
```

## Find logs file path

```bash
docker container inspect --format='{{.LogPath}}' <container_name>
```

## Copy file to running container's volume

```bash
docker container cp "C:\Users\kmaran\Documents\VS Code Projects\jenkins_repo\stages.yaml" jenkins_server:/var/jenkins_home/yaml/stages.yaml
```

## Check all running processes in a container

```bash
docker container top <container_name>
```

## Passing environment variables while launching containers

```bash
docker container run -p 3306:3306 -d mysql -e MYSQL_RANDOM_ROOT_PASSWORD=yes
```
