defmodule Storybook.Components.Chat do
  use PhoenixStorybook.Story, :component

  alias DaisyUIComponents.Chat

  def function, do: &Chat.chat/1

  def imports,
    do: [
      {Chat, [chat_header: 1, chat_bubble: 1, chat_footer: 1]}
    ]

  def variations do
    [
      %Variation{
        id: :message,
        attributes: %{position: "end"},
        slots: [
          """
          <.chat_header>Agent</.chat_header>
          <.chat_bubble color="primary">Mechanical rollout complete.</.chat_bubble>
          <.chat_footer>Seen just now</.chat_footer>
          """
        ]
      }
    ]
  end
end
