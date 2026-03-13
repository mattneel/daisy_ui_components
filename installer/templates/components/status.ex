defmodule <%= if not @dev do @web_namespace <> "." end %>DaisyUIComponents.Status do
  @moduledoc """
  Status component

  https://daisyui.com/components/status/
  """

  use <%= if not @dev do @web_namespace <> "." end %>DaisyUIComponents, :component

  @colors ["neutral" | colors()]

  attr :class, :any, default: nil
  attr :color, :string, values: @colors
  attr :size, :string, values: sizes()
  attr :rest, :global

  def status(assigns) do
    assigns = assign(assigns, :class, classes(["status", assigns[:color] && "status-#{assigns[:color]}", assigns[:size] && "status-#{assigns[:size]}", assigns.class]))

    ~H"""
    <span class={@class} {@rest}></span>
    """
  end
end
