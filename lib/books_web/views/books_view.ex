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
end
