defmodule Supple.SupplierView do
  use Supple.Web, :view

  def render("index.json", %{supplier: supplier}) do
    supplier
  end

end
