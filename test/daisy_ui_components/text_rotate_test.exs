defmodule DaisyUIComponents.TextRotateTest do
  use DaisyUIComponents.ComponentCase

  import DaisyUIComponents.TextRotate

  test "text rotate" do
    assigns = %{}

    ~H"""
    <.text_rotate>
      <:item>ONE</:item>
      <:item>TWO</:item>
      <:item>THREE</:item>
    </.text_rotate>
    """
    |> parse_component()
    |> assert_component("span.text-rotate")
    |> select_children(fn children ->
      assert Enum.count(Floki.find(children, "span")) >= 4
    end)
  end
end
