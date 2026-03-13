defmodule Storybook.Components.Phone do
  use PhoenixStorybook.Story, :component

  alias DaisyUIComponents.Phone

  def function, do: &Phone.phone/1

  def variations do
    [
      %Variation{
        id: :default,
        attributes: %{class: "max-w-xs"},
        slots: [
          """
          <img src="https://img.daisyui.com/images/stock/photo-1.webp" alt="Screen" />
          """
        ]
      }
    ]
  end
end
