defmodule DaisyUIComponents.FilterTest do
  use DaisyUIComponents.ComponentCase

  import DaisyUIComponents.Filter

  test "filter" do
    assigns = %{}

    ~H"""
    <.filter name="framework">
      <:item label="Phoenix" value="phoenix" checked />
      <:item label="Reset" reset />
    </.filter>
    """
    |> parse_component()
    |> assert_component("div.filter")
    |> select_children(fn children ->
      assert Enum.count(Floki.find(children, "input.btn")) == 2
      assert Enum.count(Floki.find(children, "input.filter-reset")) == 1
    end)
  end
end
