defmodule DaisyUIComponents.StatusTest do
  use DaisyUIComponents.ComponentCase

  import Phoenix.Component
  import DaisyUIComponents.Status

  test "status" do
    assigns = %{}

    ~H"""
    <.status color="success" size="lg" />
    """
    |> parse_component()
    |> assert_component("span")
    |> assert_class("status status-success status-lg")
  end
end
