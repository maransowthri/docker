# `docker service create` Commands

## Creating new service

```bash
docker service create <IMAGE> <CMD>
docker service create alpine ping 8.8.8.8
```

## Creating service with secrets

```bash
docker service create --name psql --secret psql_user --secret psql_pass -e POSTGRES_PASSWORD_FILE=/run/secrets/psql_pass -e POSTGRES_USER_FILE=/run/secrets/psql_user postgres
```

## Creating service with health checks

```bash
docker service create --name postgres1 -d -e POSTGRES_PASSWORD=password --health-cmd="pg_isready -U postgres  || exit 1" postgres
```

## Creating service in antivirus mode

```bash
docker service create --name antivirus -dt --mode global ubuntu
```

NOTE:

- `--mode global` will launch specified task in all running nodes
- global services will also be launched in new nodes which are created after creating global service
