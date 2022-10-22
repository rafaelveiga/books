defmodule Books.Book.Delete do
  alias Books.{Book, Repo}
  alias Ecto.UUID

  def call(id) do
    case UUID.cast(id) do
      :error -> {:error, "Invalid UUID format"}
      {:ok, uuid} -> delete(uuid)
    end
  end

  def delete(uuid) do
    case fetch_book(uuid) do
      nil -> {:error, "Book not found"}
      book -> Repo.delete(book)
    end
  end

  def fetch_book(uuid), do: Repo.get(Book, uuid)
end
