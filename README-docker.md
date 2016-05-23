# rails-docker-bootstrap

Base project for starting new rails app with dockerized development environment

It creates a docker app consisting of following services:
- web (rails app)
- db (postgres database)
- gem_data (gem cache)

Application source is mirrored between host machine and container.

## Requirements

Docker engine (docker, docker compose, docker machine). Everything else is contained inside docker containers and not required on the host machine (ruby etc.).

## Bootstrapping

First get services up with:

```
docker-compose up -d
```

Create rails app:

```
docker-compose run web rails new . -d postgresql --api --skip-spring --skip-test --force
```

Install bundle:

```
docker-compose run web bundle install
```

Setup database:

```
mv database.yml.tpl config/database.yml
docker rake db:create
```

Contact to your rails app at `192.168.99.100`.

## Links

Docker tutorial on using docker compose with rails app https://docs.docker.com/compose/rails/
