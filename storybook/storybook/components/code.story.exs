defmodule Storybook.Components.Code do
  use PhoenixStorybook.Story, :component

  alias DaisyUIComponents.Code

  def function, do: &Code.code/1

  def variations do
    [
      %Variation{
        id: :terminal,
        slots: [
          """
          <:line prefix="$">mix test</:line>
          <:line prefix=">" class="text-success">175 tests, 0 failures</:line>
          """
        ]
      }
    ]
  end
end
