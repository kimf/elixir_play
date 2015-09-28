defmodule ElixirApi.Tour do
  use ElixirApi.Model

  # validate tour,
  #      name: present()

  schema "tours" do
    field :name
    field :info_text
    #field :points, {:array, list}
    field :aggregate_count, :integer
    field :custom_domain
    field :custom_logo_url
    field :use_custom_domain, :boolean
    field :use_reversed_points, :boolean

    #belongs_to :creator, User

    timestamps
  end
end
