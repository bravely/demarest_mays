use Mix.Config

# Do not print debug messages in production
config :logger, level: :info

  config :demarest_mays, DemarestMaysWeb.Repo,
    adapter: Ecto.Adapters.Postgres,
    url: System.get_env("DATABASE_URL"),
    pool_size: String.to_integer(System.get_env("POOL_SIZE") || "10"),
    ssl: true
