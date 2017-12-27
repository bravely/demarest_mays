# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :demarest_mays_web,
  namespace: DemarestMaysWeb,
  ecto_repos: [DemarestMays.Repo]

# Configures the endpoint
config :demarest_mays_web, DemarestMaysWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Xx7DTWV2VXj+4jvZez6Vvo7JGLhlSOs5MN+PCioIuT98QVO8TZRlE2m14fbXjFgV",
  render_errors: [view: DemarestMaysWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: DemarestMaysWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :demarest_mays_web, :generators,
  context_app: :demarest_mays

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
