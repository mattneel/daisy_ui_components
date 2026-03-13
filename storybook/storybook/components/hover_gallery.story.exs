defmodule Storybook.Components.HoverGallery do
  use PhoenixStorybook.Story, :component

  alias DaisyUIComponents.HoverGallery

  def function, do: &HoverGallery.hover_gallery/1

  def template do
    """
    <div class="w-80 rounded-box overflow-hidden">
      <.psb-variation />
    </div>
    """
  end

  def variations do
    [
      %Variation{
        id: :gallery,
        slots: [
          """
          <img src="https://img.daisyui.com/images/stock/photo-1.webp" alt="Photo 1" />
          <img src="https://img.daisyui.com/images/stock/photo-2.webp" alt="Photo 2" />
          <img src="https://img.daisyui.com/images/stock/photo-3.webp" alt="Photo 3" />
          """
        ]
      }
    ]
  end
end
