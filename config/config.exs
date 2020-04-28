use Mix.Config

config :tweeterer, Tweeterer.Scheduler, jobs: [
  {"* * * * *", fn ->
      Tweeterer.FileReader.get_strings(
        Path.join("#{:code.priv_dir(:tweeterer)}", "sample.txt")
      )
      |> Tweeterer.TweetServer.tweet()
  end
  }
]
