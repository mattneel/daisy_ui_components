defmodule DaisyUIComponents.Window do
  @moduledoc """
  Window mockup component

  https://daisyui.com/components/mockup-window/
  """

  use DaisyUIComponents, :component

  attr :class, :any, default: nil
  attr :rest, :global
  slot :inner_block, required: true

  def window(assigns) do
    assigns = assign(assigns, :class, classes(["mockup-window", assigns.class]))

    ~H"""
    <div class={@class} {@rest}>
      {render_slot(@inner_block)}
    </div>
    """
  end
end
