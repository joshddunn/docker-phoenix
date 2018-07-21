# Elixir Phoenix in a Docker container

Usage steps:
	- Clone the repository
	- run `docker-compose build`
	- run `docker-compose run web mix phx.new .`
	- run `docker-compose build`
  - replace the bottom few lines of `config/dev.exs` with `dev.exs.mine`
	- run `docker-compose up`

Happy hacking!
