defmodule DemarestMaysWeb.PageController do
  use DemarestMaysWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
