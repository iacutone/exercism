defmodule Bob do
  def hey(input) do
    string = String.strip(input)

    cond do
      String.length(string) == 0 ->
        "Fine. Be that way!"
      String.ends_with?(string, "?") ->
        "Sure."
      String.upcase(string) == string and String.match?(string, ~r/\p{L}/)->
        "Whoa, chill out!"
      true ->
        "Whatever."
    end
  end
end
