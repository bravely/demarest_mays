defmodule DemarestMaysWeb.Resolvers.Blog do
  alias DemarestMays.Blogs
  def list_posts(_parent, _args, _resolution) do
    {:ok, Blogs.list_posts()}
  end
end
