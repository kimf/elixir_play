defmodule ElixirApi.TourControllerTest do
  use ElixirApi.Case, async: false

  test "/index returns a list of tours" do
    tours_as_json =
      %Tour{name: "Tisdagsgolfen"}
      |> Repo.insert
      |> List.wrap
      |> Poison.encode!

    response = conn(:get, "/api/tours") |> send_request

    assert response.status == 200
    assert response.resp_body == tours_as_json
  end

end
