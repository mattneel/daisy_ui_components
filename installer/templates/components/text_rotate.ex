defmodule DaisyUIComponents.TextRotate do
  @moduledoc """
  Text Rotate component

  https://daisyui.com/components/text-rotate/
  """

  use DaisyUIComponents, :component

  attr :class, :any, default: nil
  attr :content_class, :any, default: nil
  attr :rest, :global

  slot :item, required: true do
    attr :class, :any
  end

  def text_rotate(assigns) do
    assigns =
      assign(assigns, :class, classes(["text-rotate", assigns.class]))

    ~H"""
    <span class={@class} {@rest}>
      <span class={@content_class}>
        <span :for={item <- @item} class={Map.get(item, :class)}>
          {render_slot(item)}
        </span>
      </span>
    </span>
    """
  end
end
