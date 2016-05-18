# rails-docker-bootstrap

Base project for starting new rails app with dockerized development environment

It creates a docker app consisting of following services:
- web (rails app)
- db (postgres database)

Application source is mirrored between host machine and container.

## Requirements

Docker engine (docker, docker compose, docker machine). Everything else is contained inside docker containers and not required on the host machine (ruby etc.).

## Bootstrapping

Run `bootstrap.sh` to initialize new rails application. By default it will generate a postgres backed rails application with API only stack.

## Links

Docker tutorial on using docker compose with rails app https://docs.docker.com/compose/rails/
