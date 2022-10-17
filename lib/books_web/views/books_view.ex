defmodule BooksWeb.BooksView do
  use BooksWeb, :view
  alias Books.Book

  def render("create.json", %{book: %Book{id: id, name: name, pages: pages, author: author}}) do
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

  def render("index.json", %{books: books}) do
    Enum.map(books, fn book ->
      %{:name => book.name, :pages => book.pages, :author => book.author, :id => book.id}
    end)
  end
end
