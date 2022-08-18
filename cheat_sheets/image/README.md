# `docker image` Commands

## List all images

```bash
docker image ls
```

## Remove particular image

```bash
docker image rm IMAGE_ID
```

## Check the layers of an image

```bash
docker image history <image_id> 
```

## Read the meta data about the image

```bash
docker image inspect <image_id>
```

## Pull image from repositories

```bash
docker image pull nginx
```

## Tagging an image with a new tag or with a new name

```bash
docker image tag nginx maransowthri/nginx
```

## Push image from repositories

```bash
docker login
docker image push nginx
```

## Building an image

```bash
docker image build -t maransowthri/nginx .
```

## Cleaning up all images

```bash
docker image prune
```

## Filtering only non kubernetes / docker images

```bash
docker image ls | grep -vE 'k8|docker|healthcheck'
```

## Listing images with a specific format

```bash
docker image list --format "table {{.ID}}\t{{.Repository}}" | grep -vE 'k8|docker|healthcheck'
```
