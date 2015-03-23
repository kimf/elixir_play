defmodule ElixirApi.TourController do
  use ElixirApi.Web, :controller
  alias ElixirApi.Tour

  plug :action

  def index(conn, _params) do
    tours = Repo.all(Tour)
    render conn, tours: tours
  end
end
