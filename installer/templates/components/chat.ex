defmodule DaisyUIComponents.Chat do
  @moduledoc """
  Chat component

  https://daisyui.com/components/chat/
  """

  use DaisyUIComponents, :component

  @colors ~w(neutral) ++ colors()

  attr :class, :any, default: nil
  attr :position, :string, values: ~w(start end), default: "start"
  attr :rest, :global
  slot :inner_block, required: true

  def chat(assigns) do
    assigns =
      assign(assigns, :class, classes(["chat", "chat-#{assigns.position}", assigns.class]))

    ~H"""
    <div class={@class} {@rest}>
      {render_slot(@inner_block)}
    </div>
    """
  end

  attr :class, :any, default: nil
  attr :rest, :global
  slot :inner_block, required: true

  def chat_image(assigns) do
    assigns = assign(assigns, :class, classes(["chat-image", assigns.class]))

    ~H"""
    <div class={@class} {@rest}>
      {render_slot(@inner_block)}
    </div>
    """
  end

  attr :class, :any, default: nil
  attr :rest, :global
  slot :inner_block, required: true

  def chat_header(assigns) do
    assigns = assign(assigns, :class, classes(["chat-header", assigns.class]))

    ~H"""
    <div class={@class} {@rest}>
      {render_slot(@inner_block)}
    </div>
    """
  end

  attr :class, :any, default: nil
  attr :color, :string, values: @colors
  attr :rest, :global
  slot :inner_block, required: true

  def chat_bubble(assigns) do
    assigns =
      assign(assigns, :class, classes(["chat-bubble", chat_bubble_color(assigns[:color]), assigns.class]))

    ~H"""
    <div class={@class} {@rest}>
      {render_slot(@inner_block)}
    </div>
    """
  end

  attr :class, :any, default: nil
  attr :rest, :global
  slot :inner_block, required: true

  def chat_footer(assigns) do
    assigns = assign(assigns, :class, classes(["chat-footer", assigns.class]))

    ~H"""
    <div class={@class} {@rest}>
      {render_slot(@inner_block)}
    </div>
    """
  end

  defp chat_bubble_color("neutral"), do: "chat-bubble-neutral"
  defp chat_bubble_color("primary"), do: "chat-bubble-primary"
  defp chat_bubble_color("secondary"), do: "chat-bubble-secondary"
  defp chat_bubble_color("accent"), do: "chat-bubble-accent"
  defp chat_bubble_color("info"), do: "chat-bubble-info"
  defp chat_bubble_color("success"), do: "chat-bubble-success"
  defp chat_bubble_color("warning"), do: "chat-bubble-warning"
  defp chat_bubble_color("error"), do: "chat-bubble-error"
  defp chat_bubble_color(_color), do: nil
end
