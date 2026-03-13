defmodule Storybook.Components.Stack do
  use PhoenixStorybook.Story, :component

  alias DaisyUIComponents.Stack

  def function, do: &Stack.stack/1

  def variations do
    [
      %Variation{
        id: :cards,
        attributes: %{class: "w-40", position: "top"},
        slots: [
          """
          <div class="card bg-primary text-primary-content p-4">Top</div>
          <div class="card bg-secondary text-secondary-content p-4">Middle</div>
          <div class="card bg-accent text-accent-content p-4">Bottom</div>
          """
        ]
      }
    ]
  end
end
