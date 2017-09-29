# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ecto_phoenix,
  ecto_repos: [EctoPhoenix.Repo]

# Configures the endpoint
config :ecto_phoenix, EctoPhoenixWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "1Vp0uSopc2nq853yuG+smmRs1pQoKs5S61DJMgWVRCq1oSCH9k8EBosKPhZOigIH",
  render_errors: [view: EctoPhoenixWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: EctoPhoenix.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
