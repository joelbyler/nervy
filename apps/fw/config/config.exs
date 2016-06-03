# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Import target specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
# Uncomment to use target specific configurations

# import_config "#{Mix.Project.config[:target]}.exs"

config :ui, Ui.Endpoint,
  http: [port: 80],
  url: [host: "localhost", port: 80],
  secret_key_base: "iu8nV05T9F6C4uwhTuzSn2VyN4hvblEbQ6BB3D8HvTWl9xqY2sRuYR1kX0Z1Qmuf",
  root: Path.dirname(__DIR__),
  server: true,
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: Nerves.PubSub]

config :logger, level: :debug

# Configure your database
config :ui, Ui.Repo,
  adapter: Sqlite.Ecto,
  database: "/root/nerves.sqlite",
  pool_size: 20
