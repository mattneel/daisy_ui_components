defmodule Storybook.Components.Filter do
  use PhoenixStorybook.Story, :component

  alias DaisyUIComponents.Filter

  def function, do: &Filter.filter/1

  def variations do
    [
      %Variation{
        id: :frameworks,
        attributes: %{name: "framework"},
        slots: [
          """
          <:item label="Phoenix" value="phoenix" checked />
          <:item label="LiveView" value="liveview" />
          <:item label="Reset" reset />
          """
        ]
      }
    ]
  end
end
