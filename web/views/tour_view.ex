defmodule ElixirApi.TourView do
  use ElixirApi.Web, :view

  def render("index.json", %{tours: tours}) do
    tours
  end
end
