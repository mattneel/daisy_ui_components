defmodule DaisyUIComponents.Timeline do
  @moduledoc """
  Timeline component

  https://daisyui.com/components/timeline/
  """

  use DaisyUIComponents, :component

  attr :class, :any, default: nil
  attr :compact, :boolean, default: false
  attr :direction, :string, values: ~w(horizontal vertical)
  attr :horizontal, :boolean, default: false
  attr :snap_icon, :boolean, default: false
  attr :vertical, :boolean, default: false
  attr :rest, :global
  slot :inner_block, required: true

  def timeline(assigns) do
    assigns =
      assign(
        assigns,
        :class,
        classes([
          "timeline",
          timeline_direction(assigns),
          maybe_add_class(assigns[:compact], "timeline-compact"),
          maybe_add_class(assigns[:snap_icon], "timeline-snap-icon"),
          assigns.class
        ])
      )

    ~H"""
    <ul class={@class} {@rest}>
      {render_slot(@inner_block)}
    </ul>
    """
  end

  attr :class, :any, default: nil
  attr :end_line, :boolean, default: false
  attr :rest, :global
  attr :start_line, :boolean, default: false
  slot :inner_block, required: true

  def timeline_item(assigns) do
    assigns = assign(assigns, :class, classes([assigns.class]))

    ~H"""
    <li class={@class} {@rest}>
      <hr :if={@start_line} />
      {render_slot(@inner_block)}
      <hr :if={@end_line} />
    </li>
    """
  end

  attr :class, :any, default: nil
  attr :rest, :global
  slot :inner_block

  def timeline_start(assigns) do
    assigns = assign(assigns, :class, classes(["timeline-start", assigns.class]))

    ~H"""
    <div class={@class} {@rest}>{render_slot(@inner_block)}</div>
    """
  end

  attr :class, :any, default: nil
  attr :rest, :global
  slot :inner_block

  def timeline_middle(assigns) do
    assigns = assign(assigns, :class, classes(["timeline-middle", assigns.class]))

    ~H"""
    <div class={@class} {@rest}>{render_slot(@inner_block)}</div>
    """
  end

  attr :class, :any, default: nil
  attr :rest, :global
  slot :inner_block

  def timeline_end(assigns) do
    assigns = assign(assigns, :class, classes(["timeline-end", assigns.class]))

    ~H"""
    <div class={@class} {@rest}>{render_slot(@inner_block)}</div>
    """
  end

  attr :class, :any, default: nil
  attr :rest, :global
  slot :inner_block, required: true

  def timeline_box(assigns) do
    assigns = assign(assigns, :class, classes(["timeline-box", assigns.class]))

    ~H"""
    <div class={@class} {@rest}>{render_slot(@inner_block)}</div>
    """
  end

  defp timeline_direction(%{horizontal: true}), do: "timeline-horizontal"
  defp timeline_direction(%{vertical: true}), do: "timeline-vertical"
  defp timeline_direction(%{direction: "horizontal"}), do: "timeline-horizontal"
  defp timeline_direction(%{direction: "vertical"}), do: "timeline-vertical"
  defp timeline_direction(_assigns), do: nil
end
