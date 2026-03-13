defmodule DaisyUIComponents.Hover3DTest do
  use DaisyUIComponents.ComponentCase

  import DaisyUIComponents.Hover3D

  test "hover 3d" do
    assigns = %{}

    ~H"""
    <.hover_3d>
      <figure><img src="/card.png" alt="Card" /></figure>
    </.hover_3d>
    """
    |> parse_component()
    |> assert_component("div.hover-3d")
    |> assert_children("figure")
    |> select_children(fn children ->
      assert Enum.count(Enum.filter(children, fn {tag, _, _} -> tag == "div" end)) == 8
    end)
  end
end
