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
