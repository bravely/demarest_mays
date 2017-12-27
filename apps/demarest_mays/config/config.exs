use Mix.Config

config :demarest_mays, ecto_repos: [DemarestMays.Repo]

import_config "#{Mix.env}.exs"
