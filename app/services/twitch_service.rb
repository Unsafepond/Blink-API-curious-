class TwitchService

  def self.streams(limit = 100)
    Twitch.streams.all(limit: limit)
  end

  def self.current_stream(params)
    @current_stream ||= Twitch.streams.get(params[:stream_name])
  end

end