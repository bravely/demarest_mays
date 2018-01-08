defmodule DemarestMaysWeb.PageController do
  use DemarestMaysWeb, :controller

  plug :put_layout, false

  def index(conn, _params) do
    # conn
    # |> put_resp_header("content-type", "text/html; charset=utf-8")
    # |> Plug.Conn.send_file(200, "apps/demarest_mays_web/priv/static/index.html")

    html(conn, File.read!("apps/demarest_mays_web/priv/static/index.html"))
  end
end
