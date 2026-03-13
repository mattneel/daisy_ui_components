defmodule DaisyUIComponents.Diff do
  @moduledoc """
  Diff component

  https://daisyui.com/components/diff/
  """

  use DaisyUIComponents, :component

  attr :class, :any, default: nil
  attr :value, :integer, default: nil
  attr :rest, :global
  slot :item_1
  slot :item_2
  slot :inner_block

  def diff(assigns) do
    assigns = assign(assigns, :class, classes(["diff", assigns.class]))

    ~H"""
    <figure class={@class} tabindex="0" {@rest}>
      <%= if @item_1 != [] or @item_2 != [] do %>
        <div class="diff-item-1">{render_slot(@item_1)}</div>
        <div class="diff-item-2" tabindex="0">{render_slot(@item_2)}</div>
        <div class="diff-resizer" aria-hidden="true"></div>
      <% else %>
        {render_slot(@inner_block)}
      <% end %>
    </figure>
    """
  end

  attr :class, :any, default: nil
  attr :rest, :global
  slot :inner_block, required: true

  def diff_item_1(assigns) do
    assigns = assign(assigns, :class, classes(["diff-item-1", assigns.class]))

    ~H"""
    <div class={@class} {@rest}>
      {render_slot(@inner_block)}
    </div>
    """
  end

  attr :class, :any, default: nil
  attr :rest, :global
  slot :inner_block, required: true

  def diff_item_2(assigns) do
    assigns = assign(assigns, :class, classes(["diff-item-2", assigns.class]))

    ~H"""
    <div class={@class} {@rest}>
      {render_slot(@inner_block)}
    </div>
    """
  end

  attr :class, :any, default: nil
  attr :rest, :global

  def diff_resizer(assigns) do
    assigns = assign(assigns, :class, classes(["diff-resizer", assigns.class]))

    ~H"""
    <div class={@class} {@rest}></div>
    """
  end
end
