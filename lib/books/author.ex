defmodule Books.Author do
  use Ecto.Schema
  import Ecto.Changeset

  schema "authors" do
    field :country, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(author, attrs) do
    author
    |> cast(attrs, [:name, :country])
    |> validate_required([:name, :country])
  end
end
