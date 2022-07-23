# `docker network connect / disconnect` Commands

## Connecting a running container to a new network

```bash
docker network connect my_app_net web_app
```

NOTE: it won't be swtiched, it will be a part of two networks at this time. You have to follow below command to disconnect from the old network.

## Disconnecting a running container from a old network

```bash
docker network disconnect bridge web_app
```
