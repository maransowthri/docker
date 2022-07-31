# `docker secret` Commands

## Creating secrets

```bash
docker secret create <secret_name> <secret_file_path>
```

## Creating secrets by echoing in the command line

```bash
echo "superSecretPassword" | docker secret create <secret_name> -
```

NOTE: `-` at the end tells read the output from previous command

## List all secrets

```bash
docker secret ls
```

## Know more details about a particular secret

```bash
docker secret inspect <secret_name>
```

## Delete secret(S)

```bash
docker secret rm <secret_name>
```
