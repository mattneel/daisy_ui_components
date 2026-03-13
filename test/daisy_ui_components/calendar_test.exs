defmodule DaisyUIComponents.CalendarTest do
  use ExUnit.Case

  import Phoenix.Component
  import Phoenix.LiveViewTest
  import DaisyUIComponents.Calendar

  test "calendar wrapper" do
    assigns = %{}

    assert rendered_to_string(~H"""
           <.calendar library="react-day-picker">Calendar</.calendar>
           """) =~ ~s(class="react-day-picker")
  end
end
