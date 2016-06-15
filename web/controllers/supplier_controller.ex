defmodule Supple.SupplierController do
  use Supple.Web, :controller
  alias Supple.Repo
  alias Supple.Supplier

  def index(conn, _params) do
    supplier = Supplier |> Repo.all
    render conn, supplier: supplier
  end

end
