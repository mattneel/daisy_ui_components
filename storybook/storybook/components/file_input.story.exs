defmodule Storybook.Components.FileInput do
  use PhoenixStorybook.Story, :component

  alias DaisyUIComponents.FileInput

  def function, do: &FileInput.file_input/1

  def variations do
    [
      %Variation{
        id: :default
      },
      %Variation{
        id: :primary_large,
        attributes: %{color: "primary", size: "lg"}
      }
    ]
  end
end
