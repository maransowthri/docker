# `docker container exec` Commands

## SSHing into a container which is already running

```bash
docker container exec -it <container_id> bash
```

NOTE: container won't be stopped if you exit from the bash

## Run additional commands inside a running container

```bash
docker container exec 94c0944c528d cat /var/jenkins_home/secrets/initialAdminPassword
```