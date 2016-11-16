defmodule NucleotideCount do
  @nucleotides [?A, ?C, ?G, ?T]

  def count(strand, nucleotide) when length(strand) == 0 do
    0
  end

  def count(strand, nucleotide) when nucleotide in @nucleotides do
    Enum.count(strand, &(&1 == nucleotide))
  end

  def histogram(strand) do
    @nucleotides
    |> Enum.map(fn x -> {x, count(strand, x)} end)
    |> Enum.into(%{}) 
  end
end
