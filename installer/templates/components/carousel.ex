defmodule DaisyUIComponents.Carousel do
  @moduledoc """
  Carousel component

  https://daisyui.com/components/carousel/
  """

  use DaisyUIComponents, :component

  attr :align, :string, values: ~w(start center end)
  attr :class, :any, default: nil
  attr :direction, :string, values: ~w(horizontal vertical)
  attr :rest, :global
  slot :inner_block, required: true

  def carousel(assigns) do
    assigns =
      assign(
        assigns,
        :class,
        classes([
          "carousel",
          assigns[:direction] && "carousel-#{assigns.direction}",
          assigns[:align] && "carousel-#{assigns.align}",
          assigns.class
        ])
      )

    ~H"""
    <div class={@class} {@rest}>
      {render_slot(@inner_block)}
    </div>
    """
  end

  attr :class, :any, default: nil
  attr :rest, :global
  slot :inner_block, required: true

  def carousel_item(assigns) do
    assigns =
      assign(assigns, :class, classes(["carousel-item", assigns.class]))

    ~H"""
    <div class={@class} {@rest}>
      {render_slot(@inner_block)}
    </div>
    """
  end
end
