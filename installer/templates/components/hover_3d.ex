defmodule DaisyUIComponents.Hover3D do
  @moduledoc """
  Hover 3D component

  https://daisyui.com/components/hover-3d/
  """

  use DaisyUIComponents, :component

  attr :class, :any, default: nil
  attr :rest, :global, include: ~w(href navigate patch method download rel target)
  slot :inner_block, required: true

  def hover_3d(%{rest: rest} = assigns) do
    assigns =
      assign(assigns, :class, classes(["hover-3d", assigns.class]))

    if rest[:href] || rest[:navigate] || rest[:patch] do
      ~H"""
      <Phoenix.Component.link class={@class} {@rest}>
        {render_slot(@inner_block)}
        <div :for={_ <- 1..8}></div>
      </Phoenix.Component.link>
      """
    else
      ~H"""
      <div class={@class} {@rest}>
        {render_slot(@inner_block)}
        <div :for={_ <- 1..8}></div>
      </div>
      """
    end
  end
end
