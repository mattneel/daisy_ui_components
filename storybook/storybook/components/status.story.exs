defmodule Storybook.Components.Status do
  use PhoenixStorybook.Story, :component

  def function, do: &DaisyUIComponents.Status.status/1

  def variations do
    [
      %Variation{
        id: :default,
        attributes: %{color: "success", size: "lg"}
      }
    ]
  end
end
