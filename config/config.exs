# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :boards,
  ecto_repos: [Boards.Repo]

# Configures the endpoint
config :boards, BoardsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Jq8ff2Rl5ULA01GgE+OcK0kaQ3b7fZSemu+R3dkOh2emicv86TaRp7V1g7zxN8ZH",
  render_errors: [view: BoardsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Boards.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
