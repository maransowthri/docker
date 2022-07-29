# `docker swarm` Commands

## Initialization

```bash
docker swarm init
```

## Advertise swarm service at a particular IP

```bash
docker swarm init --advertise-addr 192.168.0.8
```

## Joining as a worker to swarm

```bash
docker swarm join --token <token> 192.168.0.8:2377
```
