defmodule DemarestMaysWeb.Schema.BlogTypes do
  use Absinthe.Schema.Notation

  object :post do
    field :id, :id
    field :title, :string
    field :body, :string
    field :author_name, :string
  end
end
