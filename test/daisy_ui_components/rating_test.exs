defmodule DaisyUIComponents.RatingTest do
  use DaisyUIComponents.ComponentCase

  import DaisyUIComponents.Rating

  test "rating" do
    assigns = %{}

    ~H"""
    <.rating name="rating" value={3} allow_clear />
    """
    |> parse_component()
    |> assert_component("div.rating")
    |> select_children(fn children ->
      assert Enum.count(Floki.find(children, "input.rating-hidden")) == 1
      assert Enum.count(Floki.find(children, "input.mask.mask-star")) == 5
    end)
  end
end
