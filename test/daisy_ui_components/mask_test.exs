defmodule DaisyUIComponents.MaskTest do
  use ExUnit.Case

  import Phoenix.Component
  import Phoenix.LiveViewTest
  import DaisyUIComponents.Mask

  test "mask image" do
    assigns = %{}

    assert rendered_to_string(~H"""
           <.mask src="/avatar.png" alt="Avatar" shape="heart" />
           """) =~ ~s(class="mask mask-heart")
  end
end
