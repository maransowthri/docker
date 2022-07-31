# `docker stack` Commands

## Deplying stacks

```bash
docker stack deploy -c <compose_file_path> <stack_name>
```

## Listing all stacks

```bash
docker stack ls
```

## More details about a particular stack

```bash
docker stack ps <stack_name>
```

## Removing stack

```bash
docker stack rm <stack_name>
```

## Listing all services in the stack

```bash
docker stack services <stack_name>
```

## Update stack

It's same as creating command, but you should use the already created stack's name

```bash
docker stack deploy -c <compose_file_path> <already_created_stack_name>
```
