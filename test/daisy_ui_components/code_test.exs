defmodule DaisyUIComponents.CodeTest do
  use DaisyUIComponents.ComponentCase

  import DaisyUIComponents.Code

  test "code" do
    assigns = %{}

    ~H"""
    <.code>
      <:line prefix="$">mix test</:line>
    </.code>
    """
    |> parse_component()
    |> assert_component("div.mockup-code")
    |> assert_children("pre[data-prefix]", fn child ->
      assert_attribute(child, "data-prefix", "$")

      child
      |> select_element("code", fn code -> assert_text(code, "mix test") end)
    end)
  end
end
