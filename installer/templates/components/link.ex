defmodule <%= if not @dev do @web_namespace <> "." end %>DaisyUIComponents.Link do
  @moduledoc """
  Link component

  https://daisyui.com/components/link/
  """

  use <%= if not @dev do @web_namespace <> "." end %>DaisyUIComponents, :component

  @doc """
  Renders a styled link.
  """
  attr :class, :any, default: nil
  attr :color, :string, values: colors() ++ ["neutral"]
  attr :hover, :boolean, default: false
  attr :rest, :global, include: ~w(download href hreflang method navigate patch rel target title)
  slot :inner_block, required: true

  def link(assigns) do
    assigns =
      assign(
        assigns,
        :class,
        classes([
          "link",
          maybe_add_class(assigns[:hover], "link-hover"),
          link_color(assigns[:color]),
          assigns.class
        ])
      )

    ~H"""
    <Phoenix.Component.link class={@class} {@rest}>
      {render_slot(@inner_block)}
    </Phoenix.Component.link>
    """
  end

  defp link_color("primary"), do: "link-primary"
  defp link_color("secondary"), do: "link-secondary"
  defp link_color("accent"), do: "link-accent"
  defp link_color("neutral"), do: "link-neutral"
  defp link_color("success"), do: "link-success"
  defp link_color("info"), do: "link-info"
  defp link_color("warning"), do: "link-warning"
  defp link_color("error"), do: "link-error"
  defp link_color(_color), do: nil
end
