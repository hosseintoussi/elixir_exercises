defmodule HelloModule do
  def some_fun do
  IO.puts "yo yo"
  end

  def some_fun(list) when is_list(list) do
    IO.inspect list
  end
end
