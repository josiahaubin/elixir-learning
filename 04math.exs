defmodule Math do
  def zero?(0), do: true
  # Guard, when x is an interger, it will run line 4
  def zero?(x) when is_integer(x), do: false
  def zero?(_), do: "Cannot calculate for non-integers"
end

IO.puts(Math.zero?(0))
IO.puts(Math.zero?(5))
IO.puts(Math.zero?("string"))
