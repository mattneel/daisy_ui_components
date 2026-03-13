defmodule <%= if not @dev do @web_namespace <> "." end %>DaisyUIComponents.Kbd do
  @moduledoc """
  Kbd component

  https://daisyui.com/components/kbd/
  """

  use <%= if not @dev do @web_namespace <> "." end %>DaisyUIComponents, :component

  attr :class, :any, default: nil
  attr :size, :string, values: sizes()
  attr :rest, :global
  slot :inner_block, required: true

  def kbd(assigns) do
    assigns = assign(assigns, :class, classes(["kbd", assigns[:size] && "kbd-#{assigns[:size]}", assigns.class]))

    ~H"""
    <kbd class={@class} {@rest}>{render_slot(@inner_block)}</kbd>
    """
  end
end
