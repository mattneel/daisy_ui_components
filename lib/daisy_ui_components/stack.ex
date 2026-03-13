defmodule DaisyUIComponents.Stack do
  @moduledoc """
  Stack component

  https://daisyui.com/components/stack/
  """

  use DaisyUIComponents, :component

  @doc """
  Renders a stack.
  """
  attr :class, :any, default: nil
  attr :position, :string, values: ~w(top bottom start end)
  attr :rest, :global
  slot :inner_block, required: true

  def stack(assigns) do
    assigns =
      assign(
        assigns,
        :class,
        classes([
          "stack",
          stack_position(assigns[:position]),
          assigns.class
        ])
      )

    ~H"""
    <div class={@class} {@rest}>
      {render_slot(@inner_block)}
    </div>
    """
  end

  defp stack_position("top"), do: "stack-top"
  defp stack_position("bottom"), do: "stack-bottom"
  defp stack_position("start"), do: "stack-start"
  defp stack_position("end"), do: "stack-end"
  defp stack_position(_position), do: nil
end
