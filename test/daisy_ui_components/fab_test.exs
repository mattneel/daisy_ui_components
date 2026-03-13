defmodule DaisyUIComponents.FabTest do
  use DaisyUIComponents.ComponentCase

  import DaisyUIComponents.Fab

  test "fab" do
    assigns = %{}

    ~H"""
    <.fab>
      <button tabindex="0" class="btn btn-primary">+</button>
      <button class="btn">Action</button>
    </.fab>
    """
    |> parse_component()
    |> assert_component("div.fab")
    |> select_children(fn children ->
      assert Enum.count(Floki.find(children, "button")) == 2
    end)
  end
end
