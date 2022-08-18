# `docker container commit` Commands

## Creating a new image from a running containers (after you manually changed some configurations)

```bash
docker container commit <container_id> <new_image_name>
```

## Creating a new image by changing a specific instruction of a running container

```bash
docker container commit --change='CMD ["ash"]' <container_id> <new_image_name>
```
