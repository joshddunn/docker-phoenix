FROM elixir:1.6

RUN apt-get update
RUN apt-get install --yes build-essential inotify-tools postgresql-client

RUN mix local.hex --force
RUN mix local.rebar --force
RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phx_new.ez

RUN mkdir /myapp
WORKDIR /myapp
ADD . /myapp
