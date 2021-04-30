# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :poc_5_min_pwa,
  ecto_repos: [Poc5MinPwa.Repo]

# Configures the endpoint
config :poc_5_min_pwa, Poc5MinPwaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "vH1UswuzuaKqXUYl1gKmt16BNIvtClN6r8MjTOLqPQiyU/JjFXgIgZiHzkzyGmUW",
  render_errors: [view: Poc5MinPwaWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Poc5MinPwa.PubSub,
  live_view: [signing_salt: "ZzN4YFtG"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
