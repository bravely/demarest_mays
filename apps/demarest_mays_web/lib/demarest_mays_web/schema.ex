defmodule DemarestMaysWeb.Schema do
  use Absinthe.Schema
  import_types DemarestMaysWeb.Schema.BlogTypes

  alias DemarestMaysWeb.Resolvers

  query do
    @desc "Get all posts"
    field :posts, list_of(:post) do
      resolve &Resolvers.Blog.list_posts/3
    end
  end
end
