# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :alchemistChecklist,
  ecto_repos: [AlchemistChecklist.Repo]

# Configures the endpoint
config :alchemistChecklist, AlchemistChecklist.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "3bK1SIiS+Dos9zLczcZejsVKf/9UVOduS8nVvu8ZYK/ZV6a2EDPTZdaUFVPDcgce",
  render_errors: [view: AlchemistChecklist.ErrorView, accepts: ~w(html json)],
  pubsub: [name: AlchemistChecklist.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
