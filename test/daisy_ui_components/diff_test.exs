defmodule DaisyUIComponents.DiffTest do
  use DaisyUIComponents.ComponentCase

  import DaisyUIComponents.Diff

  test "diff" do
    assigns = %{}

    ~H"""
    <.diff value={40}>
      <:item_1><img src="/before.png" alt="before" /></:item_1>
      <:item_2><img src="/after.png" alt="after" /></:item_2>
    </.diff>
    """
    |> parse_component()
    |> assert_component("figure.diff")
    |> assert_children("div.diff-item-1", fn child ->
      child
      |> select_element("img", fn image -> assert_attribute(image, "alt", "before") end)
    end)
    |> assert_children("div.diff-resizer")
    |> assert_children("div.diff-item-2", fn child ->
      child
      |> select_element("img", fn image -> assert_attribute(image, "alt", "after") end)
    end)
  end
end
