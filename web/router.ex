defmodule ElixirApi.Router do
  use Phoenix.Router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ElixirApi do
    pipe_through :api

    resources "/tours", TourController
  end
end
