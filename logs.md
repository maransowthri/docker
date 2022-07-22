# Tail docker logs

```bash
docker logs jenkins.service --follow
```

## Find docker logs file

```bash
docker inspect --format='{{.LogPath}}' containername

/var/lib/docker/containers/f844a7b45ca5a9589ffaa1a5bd8dea0f4e79f0e2ff639c1d010d96afb4b53334/f844a7b45ca5a9589ffaa1a5bd8dea0f4e79f0e2ff639c1d010d96afb4b53334-json.log
```
