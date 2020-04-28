defmodule Tweeterer.FileReader do
  def get_strings(path) do
    File.read!(path)
    |> String.split("\n")
    |> Enum.map(&String.trim/1)
    |> Enum.filter(&String.length(&1) <= 140)
  end
end
