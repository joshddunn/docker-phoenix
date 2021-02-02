FROM elixir:1.11

RUN apt-get update
RUN apt-get install -y build-essential inotify-tools

RUN curl -sL https://deb.nodesource.com/setup_10.x -o nodesource_setup.sh
RUN bash nodesource_setup.sh

RUN apt-get update
RUN apt-get install -y nodejs

RUN mix local.hex --force
RUN mix local.rebar --force
RUN mix archive.install --force hex phx_new 1.5.7

RUN mkdir /myapp
WORKDIR /myapp
ADD . /myapp
