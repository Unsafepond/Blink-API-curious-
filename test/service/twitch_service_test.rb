require "test_helper"

class TwitchServiceTest <  ActionDispatch::IntegrationTest

  test "#streams" do
    @streams = TwitchService.streams

    assert_equal 100, @streams.count
  end

  test "#current_channel" do
    @channel = TwitchService.current_channel("unsafepond")

    assert_equal "UnsafePond", @channel.display_name
  end

end