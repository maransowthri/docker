# `docker system` Commands

## Information about installed docker app

```bash
docker system info
```

## To look at the total space occupied by docker in your system

```bash
docker system df
```

## Per cmponent level metrics

```bash
docker system df -v
```

## Listen for all events such as container / volume / network - create / stop / delete

```bash
docker system events
```

## Listen to a specific event - stop

```bash
docker system events --filter 'type=container' --filter 'event=stop'
```

## Listing events happened from a particular date

```bash
docker system events --since 2022-09-07
```

## Clean everything that is not running

```bash
docker system prune
```

## To clean absolute evrything (0 B will be occupied by docker at the end of this)

```bash
docker system prune -a
```

NOTE: volumes are exceptional here, you have to delete them separately with below command

### Cleaning up only images / containers volumes

```bash
docker image / volume / container prune
```
