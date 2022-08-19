# `docker search` Commands

## Search for an image in docker hub

```bash
docker search nginx
```

## Filtering only the official image

```bash
docker search nginx --filter is-official=true
```

## Formatting the output - showing only the repo name

```bash
docker search nginx --format "{{.Name}}"
```
