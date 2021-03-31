require 'test_helper'

class User::UserTasksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_user_tasks_index_url
    assert_response :success
  end

end
