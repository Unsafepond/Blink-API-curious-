class StreamController < ApplicationController

  def show
    @stream_name = params[:stream_name]
    @stream = TwitchService.current_stream(@stream_name)
  end

end
