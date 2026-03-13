defmodule DaisyUIComponents.DockTest do
  use DaisyUIComponents.ComponentCase

  import DaisyUIComponents.Dock

  test "dock" do
    assigns = %{}

    ~H"""
    <.dock size="lg">
      <.dock_item active>
        <:label>Home</:label>
        <span>🏠</span>
      </.dock_item>
    </.dock>
    """
    |> parse_component()
    |> assert_component("div.dock.dock-lg")
    |> assert_children("button.dock-active")
    |> assert_children("span.dock-label", fn child -> assert_text(child, "Home") end)
  end
end
