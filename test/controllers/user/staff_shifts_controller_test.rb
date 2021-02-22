require 'test_helper'

class User::StaffShiftsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_staff_shifts_index_url
    assert_response :success
  end

  test "should get edit" do
    get user_staff_shifts_edit_url
    assert_response :success
  end

end
