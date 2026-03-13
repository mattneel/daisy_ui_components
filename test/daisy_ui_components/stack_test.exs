defmodule DaisyUIComponents.StackTest do
  use DaisyUIComponents.ComponentCase

  import DaisyUIComponents.Stack

  test "stack" do
    assigns = %{}

    ~H"""
    <.stack position="top">
      <div>One</div>
      <div>Two</div>
    </.stack>
    """
    |> parse_component()
    |> assert_component("div.stack.stack-top")
    |> select_children(fn children ->
      assert Enum.count(Floki.find(children, "div")) >= 2
    end)
  end
end
