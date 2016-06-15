defmodule Supple.Router do
  use Supple.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Supple do
    pipe_through :api

    resources "/supple/v1/suppliers", SupplierController, only: [:index]
  end

  # Other scopes may use custom stacks.
  # scope "/api", Supple do
  #   pipe_through :api
  # end
end
