# `docker node` Commands

## List all nodes in the swarm

```bash
docker node ls
```

## Promoting a node as a manager

```bash
docker node update --role manager <node_id>
```
