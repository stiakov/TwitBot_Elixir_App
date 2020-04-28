defmodule Tweeterer.Tweet do
  def send(str) do
    tokens = [
      consumer_key: System.get_env("ELIXIR_TWEETERER_CONSUMER_KEY"),
      consumer_secret: System.get_env("ELIXIR_TWEETERER_CONSUMER_SECRET"),
      acces_token: System.get_env("ELIXIR_TWEETERER_ACCESS_TOKEN"),
      access_token_secret: System.get_env("ELIXIR_TWEETERER_ACCESS_SECRET")
    ]
    ExTwitter.configure(:process, tokens)
    ExTwitter.update(str)
  end
end
