defmodule Identicon do
  @moduledoc """
    Generates identicon images based on input
  """
  def main(input) do
    input
    |> hash_input
  end

  def hash_input(input) do
    hex = 
      :crypto.hash(:md5, input)
      |> :binary.bin_to_list
    %Identicon.Image{hex: hex}
  end
end
