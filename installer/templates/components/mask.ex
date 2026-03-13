defmodule <%= if not @dev do @web_namespace <> "." end %>DaisyUIComponents.Mask do
  @moduledoc """
  Mask component

  https://daisyui.com/components/mask/
  """

  use <%= if not @dev do @web_namespace <> "." end %>DaisyUIComponents, :component

  @shapes ~w(
    half-1 half-2 squircle decagon diamond heart hexagon hexagon-2 circle pentagon
    star star-2 triangle triangle-2 triangle-3 triangle-4
  )

  @doc """
  Renders a masked wrapper or image.
  """
  attr :class, :any, default: nil
  attr :shape, :string, values: @shapes, default: "squircle"
  attr :src, :string, default: nil
  attr :alt, :string, default: ""
  attr :rest, :global
  slot :inner_block

  def mask(%{src: src} = assigns) when is_binary(src) do
    assigns =
      assign(assigns, :class, classes(["mask", "mask-#{assigns.shape}", assigns.class]))

    ~H"""
    <img src={@src} alt={@alt} class={@class} {@rest} />
    """
  end

  def mask(assigns) do
    assigns =
      assign(assigns, :class, classes(["mask", "mask-#{assigns.shape}", assigns.class]))

    ~H"""
    <div class={@class} {@rest}>
      {render_slot(@inner_block)}
    </div>
    """
  end
end
