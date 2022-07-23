# `docker network inspect` Commands

## To see the metadata about the network

```bash
docker network inspect <network_name>
```

## To list down the containers attached to a particular network

```bash
docker network inspect bridge --format '{{ .Containers }}'
```
