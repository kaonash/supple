defmodule Supple.SupplierController do
  use Supple.Web, :controller
  alias Supple.Repo
  alias Supple.Supplier

  def index(conn, _params) do
    supplier = Supplier |> Repo.all
    render conn, supplier: supplier
  end

  def delete(conn, %{"id" => splr_id}) do
    Supplier |> Repo.get(splr_id) |> Repo.delete!()
    render conn, splr_id: splr_id
  end

  def create(conn, %{"supplier_id" => supplier_id, "table_name" => table_name, "column_name" => column_name, "supplier_name" => supplier_name, "original_name" => original_name}) do
  end

  def update(conn, %{"id" => supplier_id, "table_name" => table_name, "column_name" => column_name, "supplier_name" => supplier_name, "original_name" => original_name}) do
    changeset = Supplier.changeset(%Supplier{}, %{supplier_id: supplier_id, table_name: table_name, column_name: column_name, supplier_name: supplier_name, original_name: original_name})
    Repo.update(changeset)
    render conn,nil
  end
end
