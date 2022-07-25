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
