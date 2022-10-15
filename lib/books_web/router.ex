defmodule BooksWeb.Router do
  use BooksWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", BooksWeb do
    pipe_through :api
    resources "/books", BooksController, only: [:index, :create, :show, :update, :delete]
  end
end
