# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of Mix.Config.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
use Mix.Config

# Configure Mix tasks and generators
config :test_empty_app,
  ecto_repos: [TestEmptyApp.Repo]

config :test_empty_app_web,
  ecto_repos: [TestEmptyApp.Repo],
  generators: [context_app: :test_empty_app]

# Configures the endpoint
config :test_empty_app_web, TestEmptyAppWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "6v3YhkIItyY+wcNvlQ741YCVhIVjLY+MjloheQpXI2hIHuAU8zV8VSxZmc1kxiIm",
  render_errors: [view: TestEmptyAppWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: TestEmptyApp.PubSub,
  live_view: [signing_salt: "p/rscu/Q"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
