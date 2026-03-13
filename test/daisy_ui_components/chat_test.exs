defmodule DaisyUIComponents.ChatTest do
  use DaisyUIComponents.ComponentCase

  import DaisyUIComponents.Chat

  test "chat" do
    assigns = %{}

    ~H"""
    <.chat position="end">
      <.chat_header>Agent</.chat_header>
      <.chat_bubble color="primary">Hello</.chat_bubble>
      <.chat_footer>Seen now</.chat_footer>
    </.chat>
    """
    |> parse_component()
    |> assert_component("div.chat.chat-end")
    |> assert_children("div.chat-header", fn child -> assert_text(child, "Agent") end)
    |> assert_children("div.chat-bubble.chat-bubble-primary", fn child -> assert_text(child, "Hello") end)
    |> assert_children("div.chat-footer", fn child -> assert_text(child, "Seen now") end)
  end
end
