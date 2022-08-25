# `docker service ls / ps/ rm / inspect / logs` Commands

## List all services

```bash
docker service ls
```

## Checking task / container details in a service

```bash
docker service ps <service_id>
```

## Terminating service

```bash
docker service rm <service_id>
```

## Know more details about the service

```bash
docker service inspect <service_id> [--pretty]
```

## Service logs

```bash
docker service logs <service_id>
```
