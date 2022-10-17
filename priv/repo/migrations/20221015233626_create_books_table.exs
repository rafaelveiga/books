defmodule Books.Repo.Migrations.CreateBooksTable do
  use Ecto.Migration

  def change do
    create table(:books, primary_key: false) do
      add :id, :uuid, primary_key: true
      add :name, :string
      add :pages, :integer
      add :author, :string
      timestamps()
    end
  end
end
