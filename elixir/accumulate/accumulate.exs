defmodule Accumulate do
  def accumulate(list, fun) do
    list
    |> Enum.map(fun)
  end
end
