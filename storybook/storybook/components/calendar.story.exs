defmodule Storybook.Components.Calendar do
  use PhoenixStorybook.Story, :component

  alias DaisyUIComponents.Calendar

  def function, do: &Calendar.calendar/1

  def variations do
    [
      %Variation{
        id: :cally,
        attributes: %{library: "cally", class: "rounded-box border border-base-300 p-4"},
        slots: ["Calendar integration wrapper"]
      }
    ]
  end
end
