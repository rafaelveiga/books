defmodule Books.Repo.Migrations.CreateBooks do
  use Ecto.Migration

  def change do
    create table(:books) do
      add :title, :string
      add :description, :string
      add :pages, :integer
      add :author, :string

      timestamps()
    end
  end
end
