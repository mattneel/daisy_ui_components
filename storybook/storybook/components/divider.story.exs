defmodule Storybook.Components.Divider do
  use PhoenixStorybook.Story, :component

  def function, do: &DaisyUIComponents.Divider.divider/1

  def variations do
    [
      %Variation{
        id: :default,
        attributes: %{color: "secondary", placement: "start"},
        slots: ["OR"]
      }
    ]
  end
end
