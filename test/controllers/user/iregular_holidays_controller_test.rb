require 'test_helper'

class User::IregularHolidaysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_iregular_holidays_index_url
    assert_response :success
  end

end
