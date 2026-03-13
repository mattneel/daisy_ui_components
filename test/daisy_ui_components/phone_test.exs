defmodule DaisyUIComponents.PhoneTest do
  use DaisyUIComponents.ComponentCase

  import DaisyUIComponents.Phone

  test "phone" do
    assigns = %{}

    ~H"""
    <.phone>
      <img src="/screen.png" alt="screen" />
    </.phone>
    """
    |> parse_component()
    |> assert_component("div.mockup-phone")
    |> assert_children("div.mockup-phone-camera")
    |> select_children(fn children ->
      assert Floki.find(children, "div.mockup-phone-display img[alt='screen']") != []
    end)
  end
end
