defmodule DaisyUIComponents.FileInputTest do
  use ExUnit.Case

  import Phoenix.Component
  import Phoenix.LiveViewTest
  import DaisyUIComponents.FileInput

  test "file input" do
    assigns = %{}

    assert rendered_to_string(~H"""
           <.file_input />
           """) =~ ~s(<input type="file" class="file-input")
  end

  test "file input modifiers" do
    assigns = %{}

    assert rendered_to_string(~H"""
           <.file_input color="primary" size="lg" ghost />
           """) =~ ~s(class="file-input file-input-ghost file-input-primary file-input-lg")
  end
end
