defmodule DaisyUIComponents.WindowTest do
  use DaisyUIComponents.ComponentCase

  import DaisyUIComponents.Window

  test "window" do
    assigns = %{}

    ~H"""
    <.window class="border border-base-300">
      <div>Preview</div>
    </.window>
    """
    |> parse_component()
    |> assert_component("div.mockup-window.border.border-base-300")
    |> assert_children("div", fn children ->
      assert Enum.count(List.wrap(children)) >= 1
    end)
  end
end
