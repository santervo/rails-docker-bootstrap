#!/bin/sh

# Create new rails app with postgres db and api-only stack
docker-compose run -d web rails new . --force --database=postgresql --skip-bundle --skip-test --api
