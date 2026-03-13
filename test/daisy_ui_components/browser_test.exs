defmodule DaisyUIComponents.BrowserTest do
  use DaisyUIComponents.ComponentCase

  import DaisyUIComponents.Browser

  test "browser" do
    assigns = %{}

    ~H"""
    <.browser url="https://daisyui.com">
      <div class="h-32">Preview</div>
    </.browser>
    """
    |> parse_component()
    |> assert_component("div.mockup-browser")
    |> assert_children("div.mockup-browser-toolbar")
    |> assert_children("div.input", fn child -> assert_text(child, "https://daisyui.com") end)
    |> assert_children("div.h-32", fn child -> assert_text(child, "Preview") end)
  end
end
