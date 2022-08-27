# `docker node` Commands

## List all nodes in the swarm

```bash
docker node ls
```

## Promoting a node as a manager

```bash
docker node update --role manager <node_id>
```

## Draining a node for maintanence (aka moving all services running on a node to a different node)

```bash
docker node update --availability drain <node_id>
```

## Bringing back node to active state

```bash
docker node update --availability active <node_id>
```

## Adding labels to a docker node

```bash
docker node update --label-add region=us-east-1 <node_id>
```
