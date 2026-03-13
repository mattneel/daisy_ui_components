defmodule DaisyUIComponents.Rating do
  @moduledoc """
  Rating component

  https://daisyui.com/components/rating/
  """

  use DaisyUIComponents, :component

  @doc """
  Renders a rating control.
  """
  attr :class, :any, default: nil
  attr :name, :string, required: true
  attr :value, :any, default: nil
  attr :max, :integer, default: 5
  attr :size, :string, values: sizes()
  attr :half, :boolean, default: false
  attr :shape, :string,
    default: "star",
    values: ~w(squircle decagon diamond heart hexagon hexagon-2 circle pentagon star star-2 triangle triangle-2 triangle-3 triangle-4)

  attr :item_class, :any, default: "bg-warning"
  attr :allow_clear, :boolean, default: false
  attr :rest, :global

  def rating(assigns) do
    assigns =
      assigns
      |> assign(:class, classes(["rating", rating_size(assigns[:size]), maybe_add_class(assigns[:half], "rating-half"), assigns.class]))
      |> assign(:items, rating_items(assigns))

    ~H"""
    <div class={@class} {@rest}>
      <input :if={@allow_clear} type="radio" name={@name} class="rating-hidden" value="" />
      <input
        :for={item <- @items}
        type="radio"
        name={@name}
        value={item.value}
        checked={item.checked}
        aria-label={item.label}
        class={classes(["mask", item.mask, @item_class])}
      />
    </div>
    """
  end

  defp rating_items(%{half: true, max: max, value: selected, shape: shape}) do
    Enum.map(1..(max * 2), fn index ->
      value = index / 2

      %{
        value: value,
        checked: to_string(value) == to_string(selected),
        label: "#{value}",
        mask: classes(["mask-#{shape}", if(rem(index, 2) == 1, do: "mask-half-1", else: "mask-half-2")])
      }
    end)
  end

  defp rating_items(%{max: max, value: selected, shape: shape}) do
    Enum.map(1..max, fn index ->
      %{
        value: index,
        checked: to_string(index) == to_string(selected),
        label: "#{index}",
        mask: "mask-#{shape}"
      }
    end)
  end

  defp rating_size("xs"), do: "rating-xs"
  defp rating_size("sm"), do: "rating-sm"
  defp rating_size("md"), do: "rating-md"
  defp rating_size("lg"), do: "rating-lg"
  defp rating_size("xl"), do: "rating-xl"
  defp rating_size(_size), do: nil
end
