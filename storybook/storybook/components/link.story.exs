defmodule Storybook.Components.Link do
  use PhoenixStorybook.Story, :component

  def function, do: &DaisyUIComponents.Link.link/1

  def variations do
    [
      %Variation{
        id: :default,
        attributes: %{href: "#", color: "primary", hover: true},
        slots: ["Docs"]
      }
    ]
  end
end
