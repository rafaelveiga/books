defmodule Books do
  alias Books.Book

  defdelegate create_book(params), to: Book.Create, as: :call
end
