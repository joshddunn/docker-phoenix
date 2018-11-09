# Docker container for Elixir Phoenix

Usage steps:
  1. clone this repository
  2. run `docker-compose run web mix phx.new . --module MyApp`
  3. set `hostname: "db"` in `config/dev.exs`
  4. run `docker-compose up`

Happy hacking! 🤖
