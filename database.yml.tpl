development: &default
  adapter: postgresql
  encoding: unicode
  database: app_development
  pool: 5
  username: postgres
  password:
  host: db

test:
  <<: *default
  database: app_test
