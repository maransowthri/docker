# Docker Container Commands

## To list all running containers

```bash
docker container ps
```

## SSH into running container

```bash
docker container exec -it <container name> /bin/bash
```

## To attach into a running container

```bash
docker container exec -it nginx bash
```

## Launch a container

```bash
docker container run -ti image_name bash
```

## Reading file from detached container

```bash
docker container exec 94c0944c528d cat /var/jenkins_home/secrets/initialAdminPassword
```

## Connecting a container to a port

```bash
docker container run -d -p 3000:3000 grafana_server:1.0
```

## Launching a container with a volume

```bash
docker container run -d -p 8080:8080 -v jenkins_volume:/var/jenkins_home --name jenkins_server jenkins_server:2.0
```
