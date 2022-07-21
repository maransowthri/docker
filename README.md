# Docker Cheat Sheet

Most used docker commands

## To list all images

```bash
docker images
```

## To list all running containers

```bash
docker ps
```

## SSH into running container

```bash
docker exec -it <container name> /bin/bash
```

## To attach into a running container

```bash
docker container exec -it nginx bash
```

## To run an image (launch a container)

```bash
docker run -ti image_name bash
```

## Docker attach volume

```bash
docker run -d -p 8080:8080 -v jenkins_volume:/var/jenkins_home --name jenkins_server jenkins_server:2.0
```

## Reading file from detached container

```bash
docker exec 94c0944c528d cat /var/jenkins_home/secrets/initialAdminPassword
```

Connecting a container to a port

```bash
docker run -d -p 3000:3000 grafana_server:1.0
```

## Remove particular image

```bash
docker rmi IMAGE_ID
```

## Copy file to volume

```bash
docker cp "C:\Users\kmaran\Documents\VS Code Projects\jenkins_repo\stages.yaml" jenkins_server:/var/jenkins_home/yaml/stages.yaml
```

## Docker Compose run & delete after execution

```bash
docker-compose run --rm app sh -c "python manage.py test && flake8"
```

## Tail docker logs

```bash
docker logs jenkins.service --follow
```

## Find docker logs file

```bash
docker inspect --format='{{.LogPath}}' containername

/var/lib/docker/containers/f844a7b45ca5a9589ffaa1a5bd8dea0f4e79f0e2ff639c1d010d96afb4b53334/f844a7b45ca5a9589ffaa1a5bd8dea0f4e79f0e2ff639c1d010d96afb4b53334-json.log
```
