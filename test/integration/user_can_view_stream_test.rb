require "test_helper"

class UserCanViewStreamTest <  ActionDispatch::IntegrationTest

  test "guest can view dashboard" do
    visit root_path

    assert page.has_content?("Login")
    assert_equal root_path, current_path
  end

end