use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :wercker_app, WerckerApp.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
if System.get_env("CI") == "true" do
  config :wercker_app, WerckerApp.Repo,
    adapter: Ecto.Adapters.Postgres,
    username: System.get_env("POSTGRES_ENV_USER") || "postgres",
    password: System.get_env("POSTGRES_ENV_PASS") || "postgres",
    hostname: System.get_env("POSTGRES_PORT_5432_TCP_ADDR") || "localhost",
    database: System.get_env("POSTGRES_ENV_DB") || "wercker_app_test",
    pool: Ecto.Adapters.SQL.Sandbox
else
  config :wercker_app, WerckerApp.Repo,
    adapter: Ecto.Adapters.Postgres,
    database: "wercker_app_test",
    pool: Ecto.Adapters.SQL.Sandbox
end
