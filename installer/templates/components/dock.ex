defmodule DaisyUIComponents.Dock do
  @moduledoc """
  Dock component

  https://daisyui.com/components/dock/
  """

  use DaisyUIComponents, :component

  attr :class, :any, default: nil
  attr :size, :string, values: sizes()
  attr :rest, :global
  slot :inner_block, required: true

  def dock(assigns) do
    assigns =
      assign(assigns, :class, classes(["dock", dock_size(assigns[:size]), assigns.class]))

    ~H"""
    <div class={@class} {@rest}>
      {render_slot(@inner_block)}
    </div>
    """
  end

  attr :active, :boolean, default: false
  attr :class, :any, default: nil
  attr :rest, :global, include: ~w(href navigate patch method download rel target type)
  slot :label
  slot :inner_block, required: true

  def dock_item(%{rest: rest} = assigns) do
    assigns =
      assign(assigns, :class, classes([maybe_add_class(assigns[:active], "dock-active"), assigns.class]))

    if rest[:href] || rest[:navigate] || rest[:patch] do
      ~H"""
      <Phoenix.Component.link class={@class} {@rest}>
        {render_slot(@inner_block)}
        <span :if={@label != []} class="dock-label">{render_slot(@label)}</span>
      </Phoenix.Component.link>
      """
    else
      ~H"""
      <button type="button" class={@class} {@rest}>
        {render_slot(@inner_block)}
        <span :if={@label != []} class="dock-label">{render_slot(@label)}</span>
      </button>
      """
    end
  end

  defp dock_size("xs"), do: "dock-xs"
  defp dock_size("sm"), do: "dock-sm"
  defp dock_size("md"), do: "dock-md"
  defp dock_size("lg"), do: "dock-lg"
  defp dock_size("xl"), do: "dock-xl"
  defp dock_size(_size), do: nil
end
