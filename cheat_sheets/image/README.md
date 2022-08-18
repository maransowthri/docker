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

## Read a specific meta data such as Os

```bash
docker image inspect b692a91e4e15 --format '{{.Os}}'
docker image inspect b692a91e4e15 --format '{{json .ContainerConfig.Env}}' # in JSON format
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

## Cleaning up all dangling images (images which are not tagged and also not referenced by containers)

```bash
docker image prune
```

## Cleaning up all images which are not referenced by containers

```bash
docker image prune -a
```

## Filtering only non kubernetes / docker images

```bash
docker image ls | grep -vE 'k8|docker|healthcheck'
```

## Listing images with a specific format

```bash
docker image list --format "table {{.ID}}\t{{.Repository}}" | grep -vE 'k8|docker|healthcheck'
```

## Saving an image as a tar file

```bash
docker image save nginx -o mynginx.tar
```

## importing an image from a tar file

```bash
docker image load -i mynginx.tar
```

## Flatening an image into single layer

```bash
docker image import mynginx.tar
```
