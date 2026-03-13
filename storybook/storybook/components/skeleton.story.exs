defmodule Storybook.Components.Skeleton do
  use PhoenixStorybook.Story, :component

  def function, do: &DaisyUIComponents.Skeleton.skeleton/1

  def variations do
    [
      %Variation{
        id: :default,
        attributes: %{class: "h-8 w-48"},
        slots: ["Demo"]
      }
    ]
  end
end
