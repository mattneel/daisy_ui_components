defmodule <%= if not @dev do @web_namespace <> "." end %>DaisyUIComponents.Artboard do
  @moduledoc """
  Artboard compatibility component.

  DaisyUI v5 removed the original `artboard` and `phone-*` classes.
  This component keeps the old API surface using the official size mappings from the v5 upgrade guide.

  https://daisyui.com/docs/upgrade/#artboard
  """

  use <%= if not @dev do @web_namespace <> "." end %>DaisyUIComponents, :component

  @doc """
  Renders an artboard compatibility wrapper.
  """
  attr :class, :any, default: nil
  attr :phone, :string, values: ~w(1 2 3 4 5 6), default: "1"
  attr :horizontal, :boolean, default: false
  attr :rest, :global
  slot :inner_block, required: true

  def artboard(assigns) do
    assigns =
      assign(assigns, :class, classes([artboard_size(assigns.phone, assigns.horizontal), assigns.class]))

    ~H"""
    <div class={@class} {@rest}>
      {render_slot(@inner_block)}
    </div>
    """
  end

  defp artboard_size("1", false), do: "w-[320px] h-[568px]"
  defp artboard_size("2", false), do: "w-[375px] h-[667px]"
  defp artboard_size("3", false), do: "w-[414px] h-[736px]"
  defp artboard_size("4", false), do: "w-[375px] h-[812px]"
  defp artboard_size("5", false), do: "w-[414px] h-[896px]"
  defp artboard_size("6", false), do: "w-[320px] h-[1024px]"
  defp artboard_size("1", true), do: "w-[568px] h-[320px]"
  defp artboard_size("2", true), do: "w-[667px] h-[375px]"
  defp artboard_size("3", true), do: "w-[736px] h-[414px]"
  defp artboard_size("4", true), do: "w-[812px] h-[375px]"
  defp artboard_size("5", true), do: "w-[896px] h-[414px]"
  defp artboard_size("6", true), do: "w-[1024px] h-[320px]"
end
