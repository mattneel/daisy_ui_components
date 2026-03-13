defmodule Storybook.Components.Fab do
  use PhoenixStorybook.Story, :component

  alias DaisyUIComponents.Fab

  def function, do: &Fab.fab/1

  def template do
    """
    <div class="relative min-h-80">
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
          <button tabindex="0" class="btn btn-primary fab-main-action">+</button>
          <button class="btn btn-secondary">Edit</button>
          <button class="btn btn-accent">Share</button>
          """
        ]
      }
    ]
  end
end
