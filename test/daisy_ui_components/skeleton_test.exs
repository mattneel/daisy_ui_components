defmodule DaisyUIComponents.SkeletonTest do
  use DaisyUIComponents.ComponentCase

  import Phoenix.Component
  import DaisyUIComponents.Skeleton

  test "skeleton" do
    assigns = %{}

    ~H"""
    <.skeleton class="h-8 w-32" />
    """
    |> parse_component()
    |> assert_component("div")
    |> assert_class("skeleton h-8 w-32")
  end
end
