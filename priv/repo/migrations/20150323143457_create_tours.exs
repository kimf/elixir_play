defmodule ElixirApi.Repo.Migrations.CreateTours do
  use Ecto.Migration

  def change do
    create table(:tours) do
      add :name

      timestamps
    end
  end
end
