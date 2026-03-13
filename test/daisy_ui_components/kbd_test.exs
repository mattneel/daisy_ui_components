defmodule DaisyUIComponents.KbdTest do
  use DaisyUIComponents.ComponentCase

  import Phoenix.Component
  import DaisyUIComponents.Kbd

  test "kbd" do
    assigns = %{}

    ~H"""
    <.kbd size="lg">⌘</.kbd>
    """
    |> parse_component()
    |> assert_component("kbd")
    |> assert_class("kbd kbd-lg")
    |> assert_text("⌘")
  end
end
