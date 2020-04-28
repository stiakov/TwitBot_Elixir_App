defmodule TweetererTest do
  use ExUnit.Case
  doctest Tweeterer

  test "greets the world" do
    assert Tweeterer.hello() == :world
  end
end
