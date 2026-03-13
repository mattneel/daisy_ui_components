defmodule <%= if not @dev do @web_namespace <> "." end %>DaisyUIComponents.ThemeController do
  @moduledoc """
  Theme Controller component

  https://daisyui.com/components/theme-controller/
  """

  use <%= if not @dev do @web_namespace <> "." end %>DaisyUIComponents, :component

  attr :class, :any, default: nil
  attr :type, :string, values: ~w(checkbox radio), default: "checkbox"
  attr :value, :string, required: true
  attr :checked, :boolean, default: false
  attr :rest, :global, include: ~w(name disabled)

  def theme_controller(assigns) do
    assigns = assign(assigns, :class, classes(["theme-controller", assigns.class]))

    ~H"""
    <input type={@type} value={@value} checked={@checked} class={@class} {@rest} />
    """
  end
end
