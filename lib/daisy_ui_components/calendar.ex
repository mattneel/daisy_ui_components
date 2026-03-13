defmodule DaisyUIComponents.Calendar do
  @moduledoc """
  Calendar component

  https://daisyui.com/components/calendar/
  """

  use DaisyUIComponents, :component

  @doc """
  Renders a wrapper for supported calendar library markup.
  """
  attr :class, :any, default: nil
  attr :library, :string, values: ["react-day-picker", "pika-single", "cally"], default: "react-day-picker"
  attr :rest, :global
  slot :inner_block

  def calendar(%{library: "cally"} = assigns) do
    assigns =
      assign(assigns, :class, classes(["cally", assigns.class]))

    ~H"""
    <cally class={@class} {@rest}>
      {render_slot(@inner_block)}
    </cally>
    """
  end

  def calendar(assigns) do
    assigns =
      assign(assigns, :class, classes([assigns.library, assigns.class]))

    ~H"""
    <div class={@class} {@rest}>
      {render_slot(@inner_block)}
    </div>
    """
  end
end
