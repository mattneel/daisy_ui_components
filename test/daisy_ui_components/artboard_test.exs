defmodule DaisyUIComponents.ArtboardTest do
  use DaisyUIComponents.ComponentCase

  import DaisyUIComponents.Artboard

  test "artboard" do
    assigns = %{}

    ~H"""
    <.artboard phone="1">Preview</.artboard>
    """
    |> parse_component()
    |> assert_component("div")
    |> assert_class("w-[320px] h-[568px]")
    |> assert_text("Preview")
  end
end
