defmodule DaisyUIComponents.HoverGalleryTest do
  use DaisyUIComponents.ComponentCase

  import DaisyUIComponents.HoverGallery

  test "hover gallery" do
    assigns = %{}

    ~H"""
    <.hover_gallery>
      <img src="/images/one.png" alt="one" />
      <img src="/images/two.png" alt="two" />
    </.hover_gallery>
    """
    |> parse_component()
    |> assert_component("div.hover-gallery")
    |> assert_children("img[alt='one']")
    |> assert_children("img[alt='two']")
  end
end
