defmodule Storybook.Components.Window do
  use PhoenixStorybook.Story, :component

  alias DaisyUIComponents.Window

  def function, do: &Window.window/1

  def variations do
    [
      %Variation{
        id: :default,
        attributes: %{class: "border border-base-300 bg-base-200"},
        slots: [
          """
          <div class="flex h-48 items-center justify-center bg-base-100">Window preview</div>
          """
        ]
      }
    ]
  end
end
