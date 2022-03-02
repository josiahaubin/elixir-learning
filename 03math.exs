defmodule Math do
  # First argument can be anything, second argument must be zero
  # Order here matters. If div(_,0) is not first here, it wont be utilized. It will always hit the other div first.
  # If no div(x,y), something like (5,3) will not work due to second argument needing to be zero.
  def div(_, 0) do
    {:error, "Cannot divide by zero"}
  end

  def div(x, y) do
    {:ok, "value is #{x / y}"}
  end
end

IO.inspect(Math.div(1, 0))
IO.inspect(Math.div(5, 3))
