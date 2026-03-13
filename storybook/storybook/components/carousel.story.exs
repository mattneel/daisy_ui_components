defmodule Storybook.Components.Carousel do
  use PhoenixStorybook.Story, :component

  alias DaisyUIComponents.Carousel

  def function, do: &Carousel.carousel/1

  def imports, do: [{Carousel, [carousel_item: 1]}]

  def variations do
    [
      %Variation{
        id: :cards,
        attributes: %{align: "center", class: "w-full gap-4 rounded-box bg-base-200 p-4"},
        slots: [
          """
          <.carousel_item class="w-48">
            <div class="flex h-28 w-full items-center justify-center rounded-box bg-primary text-primary-content">One</div>
          </.carousel_item>
          <.carousel_item class="w-48">
            <div class="flex h-28 w-full items-center justify-center rounded-box bg-secondary text-secondary-content">Two</div>
          </.carousel_item>
          <.carousel_item class="w-48">
            <div class="flex h-28 w-full items-center justify-center rounded-box bg-accent text-accent-content">Three</div>
          </.carousel_item>
          """
        ]
      }
    ]
  end
end
