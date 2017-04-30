# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :crossplan,
  ecto_repos: [Crossplan.Repo]

# Configures the endpoint
config :crossplan, Crossplan.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ZU1kp2iw4czUQCI5dbYnXKcMI1j/dZvw9WXy5aRpl9vTpyrz/STeP0zDUc9IlVYs",
  render_errors: [view: Crossplan.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Crossplan.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
