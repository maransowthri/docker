# Answer

```bash
echo "my_psql_user" | docker secret create psql_user -
echo "my_psql_password" | docker secret create psql_password -

docker stack deploy -c docker-compose.yaml drupal_app
```
