defmodule <%= if not @dev do @web_namespace <> "." end %>DaisyUIComponents.Divider do
  @moduledoc """
  Divider component

  https://daisyui.com/components/divider/
  """

  use <%= if not @dev do @web_namespace <> "." end %>DaisyUIComponents, :component

  @doc """
  Renders a divider.
  """
  attr :class, :any, default: nil
  attr :color, :string, values: colors() ++ ["neutral"]
  attr :horizontal, :boolean, default: false
  attr :vertical, :boolean, default: false
  attr :placement, :string, values: ~w(start end)
  attr :rest, :global
  slot :inner_block

  def divider(assigns) do
    assigns =
      assign(
        assigns,
        :class,
        classes([
          "divider",
          divider_color(assigns[:color]),
          maybe_add_class(assigns[:horizontal], "divider-horizontal"),
          maybe_add_class(assigns[:vertical], "divider-vertical"),
          divider_placement(assigns[:placement]),
          assigns.class
        ])
      )

    ~H"""
    <div class={@class} {@rest}>
      {render_slot(@inner_block)}
    </div>
    """
  end

  defp divider_color("neutral"), do: "divider-neutral"
  defp divider_color("primary"), do: "divider-primary"
  defp divider_color("secondary"), do: "divider-secondary"
  defp divider_color("accent"), do: "divider-accent"
  defp divider_color("success"), do: "divider-success"
  defp divider_color("warning"), do: "divider-warning"
  defp divider_color("info"), do: "divider-info"
  defp divider_color("error"), do: "divider-error"
  defp divider_color(_color), do: nil

  defp divider_placement("start"), do: "divider-start"
  defp divider_placement("end"), do: "divider-end"
  defp divider_placement(_placement), do: nil
end
