defmodule DemarestMays.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :body, :text
      add :author_name, :string
      add :title, :string

      timestamps()
    end

  end
end
