# `docker compose` Commands

## Start all containers (incl. setting up volumes and networks)

```bash
docker compose up
```

## Checking if the formatting of docker-compose.yaml is correct

```bash
docker compose config
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

## Building image mentioned in the docker compose's dockerfile

```bash
docker compose build
```

## Bring down all containers + remove images that was built during up

```bash
docker compose down --rmi local
```

## Composing with multiple compose files

```bash
docker compose up -f docker-compose.yml -f docker-compose.test.yml -d
```

NOTE1: the second compose file will be overridding values in the first on, and thrid one to second and so on.

NOTE2: By default `docker-compose.override.yml` file will be overriding all values in `docker-compose.yml`. You don't have specify any flags in the command

## Creating a single compose file with multiple compose files

```bash
docker compose -f docker-compose.yml -f docker-compose.prod.yml config > output.yml
```

## Docker Compose run & delete after execution

```bash
docker compose run --rm app sh -c "python manage.py test && flake8"
```
