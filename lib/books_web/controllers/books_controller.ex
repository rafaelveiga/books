defmodule BooksWeb.BooksController do
  use BooksWeb, :controller

  def create(conn, params) do
    params
    |> Books.create_book()
    |> handle_response(conn)
  end

  defp handle_response({:ok, book}, conn) do
    conn
    |> put_status(:ok)
    |> render("create.json", book: book)
  end

  defp handle_response({:error, _changeset} = error, _conn), do: error
end
