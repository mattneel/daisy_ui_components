defmodule DaisyUIComponents.Filter do
  @moduledoc """
  Filter component

  https://daisyui.com/components/filter/
  """

  use DaisyUIComponents, :component

  @doc """
  Renders a filter group.
  """
  attr :class, :any, default: nil
  attr :name, :string, default: nil
  attr :rest, :global

  slot :item do
    attr :label, :string
    attr :value, :string
    attr :checked, :boolean
    attr :class, :any
    attr :reset, :boolean
    attr :name, :string
  end

  def filter(assigns) do
    assigns =
      assign(assigns, :class, classes(["filter", assigns.class]))

    ~H"""
    <div class={@class} {@rest}>
      <input
        :for={item <- @item}
        type={if item[:reset], do: "reset", else: "radio"}
        name={item[:name] || @name}
        value={item[:value]}
        aria-label={item[:label]}
        checked={item[:checked]}
        class={classes(["btn", maybe_add_class(item[:reset], "filter-reset"), Map.get(item, :class, nil)])}
      />
    </div>
    """
  end
end
