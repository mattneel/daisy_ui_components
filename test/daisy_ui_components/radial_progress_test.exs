defmodule DaisyUIComponents.RadialProgressTest do
  use DaisyUIComponents.ComponentCase

  import Phoenix.Component
  import DaisyUIComponents.RadialProgress

  test "radial progress" do
    assigns = %{}

    ~H"""
    <.radial_progress value={70} size="6rem" thickness="0.5rem" />
    """
    |> parse_component()
    |> assert_component("div")
    |> assert_class("radial-progress")
    |> assert_attribute("aria-valuenow", "70")
  end
end
