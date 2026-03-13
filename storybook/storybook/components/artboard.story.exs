defmodule Storybook.Components.Artboard do
  use PhoenixStorybook.Story, :component

  alias DaisyUIComponents.Artboard

  def function, do: &Artboard.artboard/1

  def variations do
    [
      %Variation{
        id: :phone_preview,
        attributes: %{phone: "1", class: "bg-base-200 flex items-center justify-center"},
        slots: ["Preview"]
      }
    ]
  end
end
