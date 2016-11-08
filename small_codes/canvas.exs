defmodule Canvas do
  @defaults [fg: "black", bg: "white", font: "test"]

  def draw_text(text, option \\ []) do
    options = Keyword.merge(@defaults, option)
    IO.puts "Drawint text #{inspect(text)}"
    IO.puts "Drawint text #{options[:fg]}"
    IO.puts "Drawint text #{Keyword.get(options, :fg)}"
    IO.puts "Drawint text #{Keyword.get(options, :pattern, "solid")}"
    IO.puts "Drawint text #{inspect(options)}"
  end
end

Canvas.draw_text("hello", fg: "res", style: "italic", style: "bold")
