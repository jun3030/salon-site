require 'test_helper'

class User::CalendarsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get user_calendars_show_url
    assert_response :success
  end

end
