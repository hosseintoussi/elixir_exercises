defmodule Tax do
  def calculate_tax([], []), do: []
  def calculate_tax([], orders) do
    for order <- orders, do: [{:total_amount, order[:net_amount]} | order]
  end
  def calculate_tax(rates, orders) do
    for order <- orders, do: add_tax(order, rates)

  end

  def add_tax(order = [id: _, ship_to: state, net_amount: net], rates) do
    tax = net * Keyword.get(rates, order[:ship_to], 0)
    total = net + tax
    Keyword.put(order, :total_amount, total)
  end
end
