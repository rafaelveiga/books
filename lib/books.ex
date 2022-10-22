defmodule Books do
  alias Books.Book

  defdelegate create_book(params), to: Book.Create, as: :call
  defdelegate index_books(params), to: Book.Index, as: :call
  defdelegate delete_book(params), to: Book.Delete, as: :call
end
