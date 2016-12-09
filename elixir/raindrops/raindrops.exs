defmodule Raindrops do

  def convert(number) when number == 1, do: "1"

  def convert(number) when rem(number, 3) == 0 and rem(number, 5) == 0 and rem(number, 7) == 0 do
    "PlingPlangPlong"
  end

  def convert(number) when rem(number, 3) == 0 and rem(number, 5) == 0 do
    "PlingPlang"
  end

  def convert(number) when rem(number, 3) == 0 and rem(number, 7) == 0 do
    "PlingPlong"
  end

  def convert(number) when rem(number, 5) == 0 and rem(number, 7) == 0 do
    "PlangPlong"
  end

  def convert(number) when rem(number, 3) == 0 do
    "Pling"
  end

  def convert(number) when rem(number, 5) == 0 do
    "Plang"
  end

  def convert(number) when rem(number, 7) == 0 do
    "Plong"
  end

  def convert(number), do: Integer.to_string(number)
end

