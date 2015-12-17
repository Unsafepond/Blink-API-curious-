class TwitchService

  def self.streams(limit = 100)
    Twitch.streams.all(limit: limit)
  end

  def self.current_stream(params)
    Twitch.streams.get(params)
  end

  def self.current_channel(params)
    Twitch.channels.get(params)
  end

end