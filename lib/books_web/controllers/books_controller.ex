defmodule BooksWeb.BooksController do
  use BooksWeb, :controller

  def create(conn, params) do
    params
    |> Books.create_book()
    |> handle_response(conn, "create.json", :created)
  end

  def delete(conn, %{"id" => id}) do
    id
    |> Books.delete_book()
    |> handle_response(conn, "delete.json", :ok)
  end

  def index(conn, params) do
    Books.index_books(params)
    |> handle_response(conn, "index.json", :ok)
  end

  defp handle_response({:ok, data}, conn, view, status) do
    conn
    |> put_status(status)
    |> IO.inspect()
    |> render(view, %{data: data})
  end

  defp handle_response({:error, _changeset} = error, _conn, _view, _status), do: error
end
