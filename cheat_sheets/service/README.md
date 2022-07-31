# `docker service` Commands

## Creating new service

```bash
docker service create <IMAGE> <CMD>
docker service create alpine ping 8.8.8.8
```

## List all services

```bash
docker service ls
```

## Checking task / container details in a service

```bash
docker service ps <service_id>
```

## Scaling the service up / down

```bash
docker service update <service_id> --replicas 3
```

## Terminating service

```bash
docker service rm <service_id>
```

## Know more details about the service

```bash
docker service inspect <service_id>
```

## Service logs

```bash
docker service logs <service_id>
```

## Creating service with secrets

```bash
docker service create --name psql --secret psql_user --secret psql_pass -e POSTGRES_PASSWORD_FILE=/run/secrets/psql_pass -e POSTGRES_USER_FILE=/run/secrets/psql_user postgres
```
