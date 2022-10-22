defmodule Books.Book.Index do
  alias Books.Book
  alias Books.Repo

  def call(_params) do
    {:ok, Repo.all(Book)}
  end
end
