# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :hooks,
  ecto_repos: [Hooks.Repo]

# Configures the endpoint
config :hooks, HooksWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "i0v/R4nS7YELTm8JJ4n5n2iW0ejYcrg8RSwLKki4HGUGELJQ84caA33IPerOVIO4",
  render_errors: [view: HooksWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Hooks.PubSub,
  live_view: [signing_salt: "tFgN7dz2"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
