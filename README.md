# README

## Setup

```shell
git clone git@github.com:wat-aro/omitted_hash.git
cd omitted_hash
docker compose build
docker compose run --rm app bundle
docker compose run --rm app bin/rails db:prepare
```

## Test

```shell
docker compose run --rm app bundle exec rspec
```
