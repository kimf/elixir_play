use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :elixir_api, ElixirApi.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :elixir_api, ElixirApi.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "kifr",
  password: "",
  database: "simplegolftour_test",
  size: 1,
  max_overflow: false
