defmodule Books.Book.Create do
  alias Books.{Repo, Book}

  def call(params) do
    Book.changeset(%Book{}, params)
    |> Repo.insert()
  end
end
