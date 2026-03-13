defmodule Storybook.Components.ThemeController do
  use PhoenixStorybook.Story, :component

  def function, do: &DaisyUIComponents.ThemeController.theme_controller/1

  def variations do
    [
      %Variation{
        id: :checkbox,
        attributes: %{value: "night", checked: true}
      },
      %Variation{
        id: :radio,
        attributes: %{type: "radio", name: "theme", value: "cupcake"}
      }
    ]
  end
end
