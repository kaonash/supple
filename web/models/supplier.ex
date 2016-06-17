defmodule Supple.Supplier do
  use Ecto.Model
  import Ecto.Changeset
  import Ecto.Query

  @primary_key {:supplier_id, :integer, []}
  schema "supplier" do
    field :table_name, :string
    field :column_name, :string
    field :supplier_name, :string
    field :original_name, :string
  end

  @required_fields ~w(supplier_id table_name column_name original_name)
  @optional_fields ~w()

  def changeset(supplier, params \\ :empty) do
    supplier
    |> cast(params, @required_fields, @optional_fields)
  end

end
