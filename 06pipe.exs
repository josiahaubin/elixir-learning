defmodule PipeTest do
  def square(x), do: x * x

  def sum(l, start \\ 0) do
    start + Enum.sum(l)
  end

  # tl > already defined in elixir

  # pipe takes the variable data and inserts it as the first variable in each function call
  def sst(the_list) do
    the_list
    |> tl()
    |> sum(2)
    |> square()
  end
end

IO.puts(PipeTest.sst([1, 2, 5]))
