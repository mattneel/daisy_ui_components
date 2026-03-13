defmodule Storybook.Components.Hover3D do
  use PhoenixStorybook.Story, :component

  alias DaisyUIComponents.Hover3D

  def function, do: &Hover3D.hover_3d/1

  def template do
    """
    <div class="w-80 mx-auto">
      <.psb-variation />
    </div>
    """
  end

  def variations do
    [
      %Variation{
        id: :card,
        slots: [
          """
          <figure class="rounded-2xl overflow-hidden">
            <img src="https://img.daisyui.com/images/stock/creditcard.webp" alt="3D card" />
          </figure>
          """
        ]
      }
    ]
  end
end
