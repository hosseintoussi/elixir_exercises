defmodule Span do
  def span(min, max) when min > max, do: []
  def span(min, max), do: [min | span(min+1, max)]

  def prime_span(max) do
    for x <- span(2, max), is_prime?(x), do: x
  end

  defp is_prime?(2), do: true
  defp is_prime?(num) do
    Enum.all?(span(2, num-1), &(rem(num, &1) != 0))
  end
end
