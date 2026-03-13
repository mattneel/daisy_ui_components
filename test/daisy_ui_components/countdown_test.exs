defmodule DaisyUIComponents.CountdownTest do
  use DaisyUIComponents.ComponentCase

  import DaisyUIComponents.Countdown

  test "countdown" do
    assigns = %{}

    ~H"""
    <.countdown value={12} digits={2} />
    """
    |> parse_component()
    |> assert_component("span.countdown")
    |> assert_children("span", fn child ->
      assert_attribute(child, "style", "--value: 12; --digits: 2")
      assert_text(child, "12")
    end)
  end
end
