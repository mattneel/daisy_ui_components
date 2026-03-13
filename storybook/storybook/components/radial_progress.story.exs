defmodule Storybook.Components.RadialProgress do
  use PhoenixStorybook.Story, :component

  def function, do: &DaisyUIComponents.RadialProgress.radial_progress/1

  def variations do
    [
      %Variation{
        id: :default,
        attributes: %{value: 70, size: "6rem", thickness: "0.5rem"},
        slots: ["Demo"]
      }
    ]
  end
end
