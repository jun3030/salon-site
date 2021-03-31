require 'test_helper'

class User::StoreMembersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_store_members_index_url
    assert_response :success
  end

  test "should get show" do
    get user_store_members_show_url
    assert_response :success
  end

end
