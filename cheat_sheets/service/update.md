# `docker service update` Commands

## Scaling the service up / down

```bash
docker service update --replicas 3 <service_id>
```

## Updating image

```bash
docker service update --image <image_id> <service_id>
```

## Doing multiple things at once inside a single update command

```bash
docker service update --env-add NODE_ENV=production --publish-rm 8080 <service_id>
```

## Chaning the port

Changing the port is not possible, you can only add and remove ports at the same time

```bash
docker service update --publish-add 8080:80 --publish-rm 80 nginx
```

## Rebalancing nodes, aka forcing updates even if there are no configuration changes needed

```bash
docker service update --force nginx
```
