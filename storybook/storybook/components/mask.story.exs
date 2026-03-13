defmodule Storybook.Components.Mask do
  use PhoenixStorybook.Story, :component

  alias DaisyUIComponents.Mask

  def function, do: &Mask.mask/1

  def variations do
    [
      %Variation{
        id: :heart,
        attributes: %{
          src: "https://img.daisyui.com/images/profile/demo/1@94.webp",
          alt: "Masked avatar",
          shape: "heart",
          class: "w-24"
        }
      }
    ]
  end
end
