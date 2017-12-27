use Mix.Config

# Configure your database
config :demarest_mays, DemarestMays.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "demarest_mays_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
