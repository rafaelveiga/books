defmodule Books.Book do
  use Ecto.Schema
  import Ecto.Changeset

  schema "books" do
    field :author, :string
    field :description, :string
    field :pages, :integer
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(book, attrs) do
    book
    |> cast(attrs, [:title, :description, :pages, :author])
    |> validate_required([:title, :description, :pages, :author])
  end
end
