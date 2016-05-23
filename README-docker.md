# rails-docker-bootstrap

Base project for bootstrapping new rails app with dockerized development environment

It creates a docker app consisting of following services:
- web (rails app)
- db (postgres database)
- gem_data (gem cache)

Application source is mirrored between host machine and container.

## Requirements

Docker engine (docker, docker compose, docker machine). Everything else is contained inside docker containers and not required on the host machine (ruby etc.).

## Bootstrapping

First we need to install rails gem. Gem will be persisted in the gem volume.

```
docker-compose run web gem install rails --version "5.0.0.rc1"
```

Now we can generate a new rails app with just installed rails command. This will also run bundle install and install all required dependencies to the gem volume. Note that most rails dependencies have already been installed with rails in the previous command. We'll initialize new app backed by postgresql database, with api-only stack. I'll also skip test unit as I prefer rspec. We'll also have to add force flag to allow rails to override README.md with it's own version.

```
docker-compose run web rails new . -d postgresql --api --skip-test --skip-spring --force
```

Next setup database(s). Database configuration needs to be updated to point to our db container.

```
mv database.yml.tpl config/database.yml
docker-compose run web rails db:setup
```

Now it's time ot bring all services up:

```
docker-compose up -d
```

Our just created rails app should now be listening in address `192.168.99.100`.

## Links

Docker tutorial on using docker compose with rails app https://docs.docker.com/compose/rails/
