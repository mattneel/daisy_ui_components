defmodule <%= if not @dev do @web_namespace <> "." end %>DaisyUIComponents.Skeleton do
  @moduledoc """
  Skeleton component

  https://daisyui.com/components/skeleton/
  """

  use <%= if not @dev do @web_namespace <> "." end %>DaisyUIComponents, :component

  @doc """
  Renders a skeleton placeholder.
  """
  attr :class, :any, default: nil
  attr :rest, :global
  slot :inner_block

  def skeleton(assigns) do
    assigns =
      assign(assigns, :class, classes(["skeleton", assigns.class]))

    ~H"""
    <div class={@class} {@rest}>
      {render_slot(@inner_block)}
    </div>
    """
  end
end
