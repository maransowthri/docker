# Answers

```bash
docker network create --driver overlay backend-net
docker network create --driver overlay frontend-net

docker service create --name vote -p 80:80 --network frontend-net --replicas 2 bretfisher/examplevotingapp_vote

docker service create --name redis --network frontend-net redis:3.2

docker service create --name worker --network frontend-net --network backend-net bretfisher/examplevotingapp_worker

docker service create --name db --network backend-net --mount type=volume,source=db-data,target=/var/lib/postgresql/data -e POSTGRES_HOST_AUTH_METHOD=trust postgres:9.4

docker service create --name result -p 5001:80 --network backend-net bretfisher/examplevotingapp_result

```
