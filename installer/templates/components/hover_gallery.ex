defmodule <%= if not @dev do @web_namespace <> "." end %>DaisyUIComponents.HoverGallery do
  @moduledoc """
  Hover Gallery component

  https://daisyui.com/components/hover-gallery/
  """

  use <%= if not @dev do @web_namespace <> "." end %>DaisyUIComponents, :component

  @doc """
  Renders a hover gallery container.
  """
  attr :class, :any, default: nil
  attr :rest, :global
  slot :inner_block, required: true

  def hover_gallery(assigns) do
    assigns =
      assign(assigns, :class, classes(["hover-gallery", assigns.class]))

    ~H"""
    <div class={@class} {@rest}>
      {render_slot(@inner_block)}
    </div>
    """
  end
end
