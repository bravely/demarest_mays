defmodule DemarestMays.Blogs.Post do
  use Ecto.Schema
  import Ecto.Changeset
  alias DemarestMays.Blogs.Post


  schema "posts" do
    field :author_name, :string
    field :body, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(%Post{} = post, attrs) do
    post
    |> cast(attrs, [:body, :author_name, :title])
    |> validate_required([:body, :author_name, :title])
  end
end
