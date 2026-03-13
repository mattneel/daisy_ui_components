defmodule Storybook.Components.Countdown do
  use PhoenixStorybook.Story, :component

  alias DaisyUIComponents.Countdown

  def function, do: &Countdown.countdown/1

  def variations do
    [
      %Variation{
        id: :default,
        attributes: %{value: 12, digits: 2, class: "text-4xl font-mono"}
      }
    ]
  end
end
