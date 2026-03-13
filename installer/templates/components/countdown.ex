defmodule DaisyUIComponents.Countdown do
  @moduledoc """
  Countdown component

  https://daisyui.com/components/countdown/
  """

  use DaisyUIComponents, :component

  attr :class, :any, default: nil
  attr :digits, :integer, default: nil
  attr :value, :integer, default: nil
  attr :rest, :global
  slot :inner_block

  def countdown(assigns) do
    assigns =
      assigns
      |> assign(:class, classes(["countdown", assigns.class]))
      |> assign(:style, countdown_style(assigns))

    ~H"""
    <span class={@class} {@rest}>
      <%= if @inner_block != [] do %>
        {render_slot(@inner_block)}
      <% else %>
        <span style={@style}>{@value}</span>
      <% end %>
    </span>
    """
  end

  attr :class, :any, default: nil
  attr :digits, :integer, default: nil
  attr :value, :integer, required: true
  attr :rest, :global

  def countdown_value(assigns) do
    assigns =
      assigns
      |> assign(:class, classes([assigns.class]))
      |> assign(:style, countdown_style(assigns))

    ~H"""
    <span class={@class} style={@style} {@rest}>{@value}</span>
    """
  end

  defp countdown_style(assigns) do
    [
      assigns[:value] && "--value: #{assigns.value}",
      assigns[:digits] && "--digits: #{assigns.digits}"
    ]
    |> Enum.reject(&is_nil/1)
    |> Enum.join("; ")
  end
end
