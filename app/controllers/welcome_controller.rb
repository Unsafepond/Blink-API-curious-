class WelcomeController < ApplicationController
  helper_method :parse_name

  def index
    @streams = TwitchService.streams(50)
  end

  private

    def parse_name(name)
      name = name.sub("live_user_", "")
      name.capitalize
    end

end
