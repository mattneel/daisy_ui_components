defmodule Storybook.Components.Diff do
  use PhoenixStorybook.Story, :component

  alias DaisyUIComponents.Diff

  def function, do: &Diff.diff/1

  def variations do
    [
      %Variation{
        id: :before_after,
        attributes: %{value: 45, class: "max-w-md rounded-box"},
        slots: [
          """
          <:item_1><img src="https://img.daisyui.com/images/stock/photo-1.webp" alt="Before" /></:item_1>
          <:item_2><img src="https://img.daisyui.com/images/stock/photo-2.webp" alt="After" /></:item_2>
          """
        ]
      }
    ]
  end
end
