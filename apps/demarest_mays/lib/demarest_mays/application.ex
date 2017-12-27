defmodule DemarestMays.Application do
  @moduledoc """
  The DemarestMays Application Service.

  The demarest_mays system business domain lives in this application.

  Exposes API to clients such as the `DemarestMaysWeb` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([
      supervisor(DemarestMays.Repo, []),
    ], strategy: :one_for_one, name: DemarestMays.Supervisor)
  end
end
