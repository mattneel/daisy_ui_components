defmodule Storybook.Components.TextRotate do
  use PhoenixStorybook.Story, :component

  alias DaisyUIComponents.TextRotate

  def function, do: &TextRotate.text_rotate/1

  def variations do
    [
      %Variation{
        id: :words,
        slots: [
          """
          <:item>DESIGN</:item>
          <:item>DEVELOP</:item>
          <:item>DEPLOY</:item>
          """
        ]
      }
    ]
  end
end
