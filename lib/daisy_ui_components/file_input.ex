defmodule DaisyUIComponents.FileInput do
  @moduledoc """
  File input component

  https://daisyui.com/components/file-input/
  """

  use DaisyUIComponents, :component

  @doc """
  Renders a file input.
  """
  attr :class, :any, default: nil
  attr :color, :string, values: colors() ++ ["neutral"]
  attr :ghost, :boolean, default: false
  attr :size, :string, values: sizes()
  attr :rest, :global, include: ~w(accept disabled form multiple name required)

  def file_input(assigns) do
    assigns =
      assign(
        assigns,
        :class,
        classes([
          "file-input",
          maybe_add_class(assigns[:ghost], "file-input-ghost"),
          file_input_color(assigns[:color]),
          file_input_size(assigns[:size]),
          assigns.class
        ])
      )

    ~H"""
    <input type="file" class={@class} {@rest} />
    """
  end

  defp file_input_color("neutral"), do: "file-input-neutral"
  defp file_input_color("primary"), do: "file-input-primary"
  defp file_input_color("secondary"), do: "file-input-secondary"
  defp file_input_color("accent"), do: "file-input-accent"
  defp file_input_color("info"), do: "file-input-info"
  defp file_input_color("success"), do: "file-input-success"
  defp file_input_color("warning"), do: "file-input-warning"
  defp file_input_color("error"), do: "file-input-error"
  defp file_input_color(_color), do: nil

  defp file_input_size("xs"), do: "file-input-xs"
  defp file_input_size("sm"), do: "file-input-sm"
  defp file_input_size("md"), do: "file-input-md"
  defp file_input_size("lg"), do: "file-input-lg"
  defp file_input_size("xl"), do: "file-input-xl"
  defp file_input_size(_size), do: nil
end
