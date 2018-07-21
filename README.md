# Elixir Phoenix in a Docker container

Usage steps:
  1. Clone the repository
  2. run `docker-compose run web mix phx.new . --module MyApp`
  3. replace the bottom few lines of `config/dev.exs` with `dev.exs.mine`
  4. run `docker-compose up`

Happy hacking!
