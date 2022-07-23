# `docker container inspect` Commands

## Retrieve all meta data about the container

```bash
docker container inspect <container_id>
```

## Finding a particular attribute in inspect or finding logs file path

```bash
docker container inspect --format='{{.LogPath}}' <container_id>
```

## Finding container IP

```bash
docker container inspect --format '{{ .NetworkSettings.IPAddress }}' web_app
```
