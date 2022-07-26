# `docker volume` Commands

## List down all available volumes

```bash
docker volume ls
```

## More details about a particular volume

```bash
docker volume inspect <volume_id>
```

## Cleaning up all idle volumes

```bash
docker volume prune
```

## Creating docker volume ahead of time

```bash
docker volume create mysql_db
```

NOTE: if you are using named volumes (i.e. `docker container run -v mysql_db:/var/lib/mysql`) it will make use of `mysql_db` volume if it's already there, otherwise it will create it automatically. You don't have to create volumes separately.
