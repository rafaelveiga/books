defmodule Books.Book do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, Ecto.UUID, autogenerate: true}

  schema "books" do
    field :name, :string
    field :pages, :integer
    field :author, :string
    timestamps()
  end

  def build(params) do
    params
    |> changeset()
    |> apply_action(:insert)
  end

  def changeset(params) do
    %__MODULE__{}
    |> cast(params, [:name, :pages, :author])
    |> validate_required([:name, :pages, :author])
  end
end
