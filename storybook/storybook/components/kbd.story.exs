defmodule Storybook.Components.Kbd do
  use PhoenixStorybook.Story, :component

  def function, do: &DaisyUIComponents.Kbd.kbd/1

  def variations do
    [
      %Variation{
        id: :default,
        attributes: %{size: "lg"},
        slots: ["⌘"]
      }
    ]
  end
end
