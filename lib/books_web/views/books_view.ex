defmodule BooksWeb.BooksView do
  use BooksWeb, :view
  alias Books.Book

  def render("create.json", %{data: %Book{id: id, name: name, pages: pages, author: author}}) do
    %{
      message: "Book created",
      book: %{
        id: id,
        name: name,
        pages: pages,
        author: author
      }
    }
  end

  def render("index.json", %{data: books}) do
    Enum.map(books, fn book ->
      %{:name => book.name, :pages => book.pages, :author => book.author, :id => book.id}
    end)
  end

  def render("delete.json", %{data: %Book{id: id}}) do
    %{
      message: "Book deleted",
      book: %{
        id: id
      }
    }
  end
end
