defmodule DaisyUIComponents.LinkTest do
  use DaisyUIComponents.ComponentCase

  test "link" do
    assigns = %{}

    ~H"""
    <DaisyUIComponents.Link.link href="#" color="primary" hover>Docs</DaisyUIComponents.Link.link>
    """
    |> parse_component()
    |> assert_component("a")
    |> assert_class("link link-hover link-primary")
    |> assert_text("Docs")
  end
end
