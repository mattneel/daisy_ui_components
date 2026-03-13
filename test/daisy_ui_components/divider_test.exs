defmodule DaisyUIComponents.DividerTest do
  use DaisyUIComponents.ComponentCase

  import Phoenix.Component
  import DaisyUIComponents.Divider

  test "divider" do
    assigns = %{}

    ~H"""
    <.divider color="secondary" placement="start">OR</.divider>
    """
    |> parse_component()
    |> assert_component("div.divider.divider-start.divider-secondary")
    |> assert_text("OR")
  end
end
