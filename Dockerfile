FROM elixir:latest

RUN curl -fsSL https://deb.nodesource.com/setup_current.x | bash -

RUN apt-get update
RUN apt-get install -y build-essential inotify-tools nodejs

RUN mix local.hex --force
RUN mix local.rebar --force
RUN mix archive.install --force hex phx_new

RUN mkdir /myapp
WORKDIR /myapp
ADD . /myapp
