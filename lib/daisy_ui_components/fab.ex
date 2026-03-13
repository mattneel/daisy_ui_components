defmodule DaisyUIComponents.Fab do
  @moduledoc """
  FAB / Speed Dial component

  https://daisyui.com/components/fab/
  """

  use DaisyUIComponents, :component

  attr :class, :any, default: nil
  attr :flower, :boolean, default: false
  attr :rest, :global
  slot :inner_block, required: true

  def fab(assigns) do
    assigns =
      assign(assigns, :class, classes(["fab", maybe_add_class(assigns[:flower], "fab-flower"), assigns.class]))

    ~H"""
    <div class={@class} {@rest}>
      {render_slot(@inner_block)}
    </div>
    """
  end

  attr :class, :any, default: nil
  attr :kind, :string, values: ~w(default main-action close trigger), default: "default"
  attr :tabindex, :string, default: nil
  attr :rest, :global, include: ~w(href navigate patch method download rel target type)
  slot :inner_block, required: true

  def fab_action(%{rest: rest} = assigns) do
    assigns =
      assign(assigns, :class, classes([fab_action_kind(assigns[:kind]), assigns.class]))

    if rest[:href] || rest[:navigate] || rest[:patch] do
      ~H"""
      <Phoenix.Component.link class={@class} tabindex={@tabindex} {@rest}>
        {render_slot(@inner_block)}
      </Phoenix.Component.link>
      """
    else
      ~H"""
      <button type="button" class={@class} tabindex={@tabindex} {@rest}>
        {render_slot(@inner_block)}
      </button>
      """
    end
  end

  defp fab_action_kind("main-action"), do: "fab-main-action"
  defp fab_action_kind("close"), do: "fab-close"
  defp fab_action_kind(_kind), do: nil
end
