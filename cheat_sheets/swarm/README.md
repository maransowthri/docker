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

## To get the manager / worker's token

```bash
docker swarm join-token manager
```

## Releasing node from swarm

```bash
docker swarm leave
```

NOTE: SSH into node and run below
