class TwitchService

  def self.streams(limit = 100)
    Twitch.streams.all(limit: limit)
  end

end