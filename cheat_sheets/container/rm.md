# `docker container rm` Commands

## Remove stopped containers

```bash
docker container rm <container_id> <container_id> ...
```

## Remove both stopped and running containers

```bash
docker container rm -f <container_id> <container_id> ...
```

## Remove all containers at one shot

```bash
docker container rm -f $(docker container ls -aq)
```
