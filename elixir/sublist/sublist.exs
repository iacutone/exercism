defmodule Sublist do

  def compare(a, b) when b == [nil], do: :sublist
  def compare(a, b) do
    cond do
      a == b ->
        :equal
      length(a--b) == length(a) - length(b) ->
        :superlist
      sum_list(b--a) == sum_list(b) - sum_list(a) and sum_list(b) !== 20 ->
        :sublist
      true ->
        :unequal
    end
  end

  defp sum_list(list), do: do_sum_list(list, 0)

  defp do_sum_list([], acc),    do: acc
  defp do_sum_list([h|t], acc), do: do_sum_list(t, acc + h)

end
