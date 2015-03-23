defmodule ElixirApi.Tour do
  use Ecto.Model

  schema "tours" do
    field :name

    timestamps
  end
end
