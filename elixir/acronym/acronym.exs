defmodule Acronym do
  def abbreviate(string) do
    string
    |> Macro.underscore
    |> String.replace(~r/[_]+/, " ")
    |> String.upcase
    |> String.split
    |> Enum.map(fn x -> String.at(x, 0) end)
    |> Enum.join
  end
end
