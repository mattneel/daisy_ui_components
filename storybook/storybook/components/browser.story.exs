defmodule Storybook.Components.Browser do
  use PhoenixStorybook.Story, :component

  alias DaisyUIComponents.Browser

  def function, do: &Browser.browser/1

  def variations do
    [
      %Variation{
        id: :default,
        attributes: %{url: "https://daisyui.com", class: "border border-base-300 bg-base-200"},
        slots: [
          """
          <div class="flex h-48 items-center justify-center bg-base-100">Page preview</div>
          """
        ]
      }
    ]
  end
end
