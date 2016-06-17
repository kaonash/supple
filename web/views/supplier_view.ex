defmodule Supple.SupplierView do
  use Supple.Web, :view

  def render("index.json", %{supplier: supplier}) do
    supplier
  end

  def render("delete.json", %{splr_id: splr_id}) do
    splr_id
  end
end
