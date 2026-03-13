defmodule Storybook.Components.Timeline do
  use PhoenixStorybook.Story, :component

  alias DaisyUIComponents.Timeline

  def function, do: &Timeline.timeline/1

  def imports,
    do: [
      {Timeline, [timeline_item: 1, timeline_start: 1, timeline_middle: 1, timeline_end: 1, timeline_box: 1]}
    ]

  def variations do
    [
      %Variation{
        id: :roadmap,
        attributes: %{horizontal: true},
        slots: [
          """
          <.timeline_item start_line end_line>
            <.timeline_start>2024</.timeline_start>
            <.timeline_middle><span>●</span></.timeline_middle>
            <.timeline_end><.timeline_box>Launch</.timeline_box></.timeline_end>
          </.timeline_item>
          <.timeline_item start_line>
            <.timeline_start>2025</.timeline_start>
            <.timeline_middle><span>●</span></.timeline_middle>
            <.timeline_end><.timeline_box>Scale</.timeline_box></.timeline_end>
          </.timeline_item>
          """
        ]
      }
    ]
  end
end
