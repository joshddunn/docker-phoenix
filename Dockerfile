FROM elixir:1.6.6

RUN apt-get update
RUN apt-get install -y build-essential

RUN curl -sL https://deb.nodesource.com/setup_8.x -o nodesource_setup.sh
RUN bash nodesource_setup.sh

RUN apt-get update
RUN apt-get install -y nodejs

RUN mix local.hex --force
RUN mix local.rebar --force
RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phx_new.ez

RUN mkdir /myapp
WORKDIR /myapp
ADD . /myapp
