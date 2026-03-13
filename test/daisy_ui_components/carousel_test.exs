defmodule DaisyUIComponents.CarouselTest do
  use DaisyUIComponents.ComponentCase

  import DaisyUIComponents.Carousel

  test "carousel" do
    assigns = %{}

    ~H"""
    <.carousel align="center">
      <.carousel_item class="w-32">One</.carousel_item>
      <.carousel_item class="w-32">Two</.carousel_item>
    </.carousel>
    """
    |> parse_component()
    |> assert_component("div.carousel.carousel-center")
    |> select_children(fn children ->
      assert Enum.count(Floki.find(children, "div.carousel-item")) == 2
    end)
  end
end
