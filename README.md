# Docker Phoenix 🔥

This is an easy to use docker container for [elixir](https://elixir-lang.org/) and [phoenix](https://phoenixframework.org/).

## Usage

Before installing you may need to clean up your docker images if you already have `elixir:latest` installed.

Clone this repository and run

```
docker-compose run app mix phx.new . --live --module MyApp --app my_app
```

Then you can remove

```
RUN mix archive.install --force hex phx_new
```

from the `Dockerfile`.
