defmodule MyReduce do
  def perform([], value, _), do: value
  def perform([head|tail], value, func), do: perform(tail, func.(head, value), func)

  def mapsum([], _), do: 0
  def mapsum([head|tail], func), do: func.(head) + mapsum(tail, func)

  def max([]), do: 0
  def max([a]), do: a
  def max([x,y|tail]) when x > y, do: max([x|tail])
  def max([x,y|tail]) when x <= y, do: max([y|tail])
end
