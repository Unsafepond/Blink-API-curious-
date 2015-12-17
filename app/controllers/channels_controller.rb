class ChannelsController < ApplicationController

  def show
    @channel = TwitchService.current_channel(params[:channel_name])
    @videos = @channel.videos(limit: 10)
  end

end
