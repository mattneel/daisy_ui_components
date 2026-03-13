defmodule DaisyUIComponents.Code do
  @moduledoc """
  Code mockup component

  https://daisyui.com/components/mockup-code/
  """

  use DaisyUIComponents, :component

  attr :class, :any, default: nil
  attr :rest, :global
  slot :line do
    attr :class, :any
    attr :prefix, :string
  end

  slot :inner_block

  def code(assigns) do
    assigns = assign(assigns, :class, classes(["mockup-code", assigns.class]))

    ~H"""
    <div class={@class} {@rest}>
      <%= if @line != [] do %>
        <pre :for={line <- @line} class={Map.get(line, :class)} data-prefix={Map.get(line, :prefix)}>
          <code>{render_slot(line)}</code>
        </pre>
      <% else %>
        {render_slot(@inner_block)}
      <% end %>
    </div>
    """
  end

  attr :class, :any, default: nil
  attr :prefix, :string, default: nil
  attr :rest, :global
  slot :inner_block, required: true

  def code_line(assigns) do
    assigns = assign(assigns, :class, classes([assigns.class]))

    ~H"""
    <pre class={@class} data-prefix={@prefix} {@rest}><code>{render_slot(@inner_block)}</code></pre>
    """
  end
end
