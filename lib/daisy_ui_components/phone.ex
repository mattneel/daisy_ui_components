defmodule DaisyUIComponents.Phone do
  @moduledoc """
  Phone mockup component

  https://daisyui.com/components/mockup-phone/
  """

  use DaisyUIComponents, :component

  attr :camera, :boolean, default: true
  attr :class, :any, default: nil
  attr :rest, :global
  slot :inner_block, required: true

  def phone(assigns) do
    assigns = assign(assigns, :class, classes(["mockup-phone", assigns.class]))

    ~H"""
    <div class={@class} {@rest}>
      <div :if={@camera} class="mockup-phone-camera"></div>
      <div class="mockup-phone-display">
        {render_slot(@inner_block)}
      </div>
    </div>
    """
  end
end
