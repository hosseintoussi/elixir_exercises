defmodule Fizzbuzz do
  def fizzbuzz(num) when num > 1 do
    list = Enum.to_list(1..num)
    Enum.map(list, &checker(&1))
  end

  def checker(num) when rem(num, 3) == 0 and rem(num, 5) == 0, do: "FizzBuzz"
  def checker(num) when rem(num, 3) == 0, do: "Fizz"
  def checker(num) when rem(num, 5) == 0, do: "Buzz"
  def checker(num), do: num
end
