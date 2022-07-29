# `docker node` Commands

## List all nodes in the swarm

```bash
docker node ls
```

## Promoting a node as a manager

```bash
docker node update --role manager <node_id>
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
