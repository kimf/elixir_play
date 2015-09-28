defmodule ElixirApi.Model do
  defmacro __using__(_) do
    quote do
      use Ecto.Model
      @timestamps_opts [type: Ecto.DateTime, usec: false,
        inserted_at: :created_at, updated_at: :updated_at]
    end
  end
end
