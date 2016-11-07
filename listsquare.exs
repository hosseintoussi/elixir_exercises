defmodule ListSquare do
  def square([]), do: []
  def square([head | tail]), do: [head*head | square(tail)]

  def sum(list), do: total(list, 0)
  defp total([], no), do: no
  defp total([head|tail], no), do: total(tail, head+no)
end
