defmodule ElixirApi.Router do
  use Phoenix.Router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ElixirApi do
    pipe_through :api # Use the default browser stack

    resources "/tours", TourController
  end
end
