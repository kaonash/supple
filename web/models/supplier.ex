defmodule Supple.Supplier do
  use Ecto.Model
  import Ecto.Query

  @primary_key {:supplier_id, :integer, []}
  schema "supplier" do
    field :table_name, :string
    field :column_name, :string
    field :supplier_name, :string
    field :original_name, :string
  end

end
