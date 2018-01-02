defmodule DemarestMaysWeb.Router do
  use DemarestMaysWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", DemarestMaysWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", DemarestMaysWeb do
  #   pipe_through :api
  # end

  forward "/graphql", Absinthe.Plug, schema: DemarestMaysWeb.Schema

  if Mix.env == :dev do
    forward "/graphiql", Absinthe.Plug.GraphiQL, schema: DemarestMaysWeb.Schema
  end
end
