defmodule Storybook.Components.Rating do
  use PhoenixStorybook.Story, :component

  alias DaisyUIComponents.Rating

  def function, do: &Rating.rating/1

  def variations do
    [
      %Variation{
        id: :stars,
        attributes: %{name: "rating", value: 3, allow_clear: true}
      }
    ]
  end
end
