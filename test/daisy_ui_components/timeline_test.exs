defmodule DaisyUIComponents.TimelineTest do
  use DaisyUIComponents.ComponentCase

  import DaisyUIComponents.Timeline

  test "timeline" do
    assigns = %{}

    ~H"""
    <.timeline horizontal>
      <.timeline_item start_line end_line>
        <.timeline_start>2024</.timeline_start>
        <.timeline_middle>
          <span>●</span>
        </.timeline_middle>
        <.timeline_end>
          <.timeline_box>Launch</.timeline_box>
        </.timeline_end>
      </.timeline_item>
    </.timeline>
    """
    |> parse_component()
    |> assert_component("ul.timeline.timeline-horizontal")
    |> assert_children("li")
    |> assert_children("div.timeline-start", fn child -> assert_text(child, "2024") end)
    |> assert_children("div.timeline-box", fn child -> assert_text(child, "Launch") end)
  end
end
