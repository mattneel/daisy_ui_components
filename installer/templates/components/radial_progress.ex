defmodule <%= if not @dev do @web_namespace <> "." end %>DaisyUIComponents.RadialProgress do
  @moduledoc """
  Radial progress component

  https://daisyui.com/components/radial-progress/
  """

  use <%= if not @dev do @web_namespace <> "." end %>DaisyUIComponents, :component

  @doc """
  Renders a radial progress indicator.
  """
  attr :value, :integer, required: true
  attr :label, :string, default: nil
  attr :size, :string, default: nil
  attr :thickness, :string, default: nil
  attr :class, :any, default: nil
  attr :rest, :global
  slot :inner_block

  def radial_progress(assigns) do
    assigns =
      assigns
      |> assign(:class, classes(["radial-progress", assigns.class]))
      |> assign(:style, radial_progress_style(assigns))
      |> assign_new(:label, fn -> "#{assigns.value}%" end)

    ~H"""
    <div
      class={@class}
      style={@style}
      role="progressbar"
      aria-valuenow={@value}
      aria-valuemin="0"
      aria-valuemax="100"
      {@rest}
    >
      {render_slot(@inner_block) || @label}
    </div>
    """
  end

  defp radial_progress_style(assigns) do
    [
      "--value: #{assigns.value}",
      if(assigns[:size], do: "--size: #{assigns.size}"),
      if(assigns[:thickness], do: "--thickness: #{assigns.thickness}")
    ]
    |> Enum.reject(&is_nil/1)
    |> Enum.join("; ")
  end
end
