defmodule DaisyUIComponents.ThemeControllerTest do
  use DaisyUIComponents.ComponentCase

  import Phoenix.Component
  import DaisyUIComponents.ThemeController

  test "theme controller" do
    assigns = %{}

    ~H"""
    <.theme_controller value="night" checked />
    """
    |> parse_component()
    |> assert_component("input")
    |> assert_attribute("type", "checkbox")
    |> assert_attribute("value", "night")
    |> assert_attribute("checked", "checked")
    |> assert_class("theme-controller")
  end
end
