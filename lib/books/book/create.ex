defmodule Books.Book.Create do
  alias Books.Book
  alias Books.Repo

  def call(params) do
    params
    |> Book.build()
    |> create_book()
  end

  defp create_book({:ok, struct}), do: Repo.insert(struct)
  defp create_book({:error, _changeset} = error), do: error
end
