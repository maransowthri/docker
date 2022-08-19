# `docker prune` Commands

```bash
docker image prune -f # Removes dangling images
docker image prune -a -f # Removes all unused images
docker builder prune -f # Removes dangling build caches
docker builder prune -a -f # Removes all build caches
docker container prune -f # Removes all stopped containers
docker volume prune -f # Removes all unused local volumes
docker network prune -f # Removes all unused networks
docker system prune -f # Remove all unused containers, networks, images (both dangling and unreferenced), and optionally, volumes.
docker system prune -f --volumes # Remove all unused containers, networks, images (both dangling and unreferenced), and volumes.
```

NOTE1: dangling means resources that are not properly tags **and** not used by any running resources

NOTE2: `-f` will skips yes / no prompt
