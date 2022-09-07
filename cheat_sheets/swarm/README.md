# `docker swarm` Commands

## Initialization

```bash
docker swarm init
```

## Recover from losing the quoram

```bash
docker swarm init --force-new-cluster --advertise-addr <host_ip>
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

## Locking up docker swarm

```bash
docker swarm update --autolock=true
```

NOTE:

- After executing it you won't be able to perform any docker commands like `node ls`, `service ls` etc.
- You have to unlock the swarm by pasting the generate key from above command to execute docker commands

## Unlocking docker swarm

```bash
docker swarm unlock
```

## To retrive unlock key

```bash
docker swarm unlock-key
```

## To rotate unlock key

```bash
docker swarm unlock-key --rotate
```
