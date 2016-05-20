# rails-docker-bootstrap

Base project for starting new rails app with dockerized development environment

It creates a docker app consisting of following services:
- web (rails app)
- db (postgres database)

Application source is mirrored between host machine and container.

## Requirements

Docker engine (docker, docker compose, docker machine). Everything else is contained inside docker containers and not required on the host machine (ruby etc.).

## Bootstrapping

First get services up with:

```
docker-compose up -d
```

Use `docker-rails` and `docker-rake` scripts to run rails and rake commands inside web container.

Initialize rails app with:

```
./docker-rails new -d postgresql
```

Copy database config:

```
cp database.yml.tpl config/database.yml
```

Create database:

```
docker rake db:create
```

Contact to your rails app at `192.168.99.100`.

## Links

Docker tutorial on using docker compose with rails app https://docs.docker.com/compose/rails/
