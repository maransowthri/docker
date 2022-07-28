# `docker compose` Commands

## Start all containers (incl. setting up volumes and networks)

```bash
docker compose up
```

## Run compose up in the background

```bash
docker compose up -d
```

## Check out the logs of compose execution

```bash
docker compose logs
```

## Composed containes status

```bash
docker compose ps
```

## Running services in composed containes

```bash
docker compose top
```

## Remove all containers (incl. setting up volumes and networks)

```bash
docker compose down
```

NOTE: This does not include volumes

## Remove all containers + volumes (incl. setting up volumes and networks)

```bash
docker compose down -v
```

## Docker Compose run & delete after execution

```bash
docker compose run --rm app sh -c "python manage.py test && flake8"
```
