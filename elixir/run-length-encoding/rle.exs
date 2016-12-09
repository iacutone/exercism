defmodule RunLengthEncoder do
  def encode(string) when string == "", do: ""

  def encode(string) do
    string
    |> String.codepoints
    |> Enum.chunk_by(&(&1))
    |> Enum.map(fn x -> "#{length(x)}#{List.first(x)}" end)
    |> Enum.into("")
  end

  def decode(string) do
    string
    |> scan_integers
    |> output_string
    |> Enum.join
  end

  defp scan_integers(string) do
    Regex.scan(~r/(\d+)(.)/, string)
  end

  defp output_string(string) do
    Enum.map(string, fn x -> String.duplicate(letter(x), letter_count(x)) end)
  end

  defp letter(string) do
    Enum.at(string, 2)
  end

  defp letter_count(string) do
    String.to_integer(Enum.at(string, 1))
  end
end
