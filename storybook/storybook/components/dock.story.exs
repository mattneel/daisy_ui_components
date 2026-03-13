defmodule Storybook.Components.Dock do
  use PhoenixStorybook.Story, :component

  alias DaisyUIComponents.Dock

  def function, do: &Dock.dock/1

  def imports, do: [{Dock, [dock_item: 1]}]

  def template do
    """
    <div class="relative min-h-64 pb-24">
      <.psb-variation />
    </div>
    """
  end

  def variations do
    [
      %Variation{
        id: :default,
        slots: [
          """
          <.dock_item active>
            <:label>Home</:label>
            <span>🏠</span>
          </.dock_item>
          <.dock_item>
            <:label>Files</:label>
            <span>📁</span>
          </.dock_item>
          <.dock_item>
            <:label>Settings</:label>
            <span>⚙️</span>
          </.dock_item>
          """
        ]
      }
    ]
  end
end
