defmodule DaisyUIComponents.Browser do
  @moduledoc """
  Browser mockup component

  https://daisyui.com/components/mockup-browser/
  """

  use DaisyUIComponents, :component

  attr :class, :any, default: nil
  attr :url, :string, default: nil
  attr :rest, :global
  slot :inner_block, required: true

  def browser(assigns) do
    assigns = assign(assigns, :class, classes(["mockup-browser", assigns.class]))

    ~H"""
    <div class={@class} {@rest}>
      <div :if={@url} class="mockup-browser-toolbar">
        <div class="input">{@url}</div>
      </div>
      {render_slot(@inner_block)}
    </div>
    """
  end
end
