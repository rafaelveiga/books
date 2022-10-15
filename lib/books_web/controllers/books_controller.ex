defmodule BooksWeb.BooksController do
  use BooksWeb, :controller

  def create(conn, params) do
    params
    |> Books.create_book()
  end
end
