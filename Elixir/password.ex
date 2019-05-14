defmodule Password do
  def generate(length \\ 8) do
    character_range = (33..126)
    Enum.reduce((1..length), [], fn (_, acc) ->
      [Enum.random(character_range) | acc]
    end) |> to_string
  end
end
