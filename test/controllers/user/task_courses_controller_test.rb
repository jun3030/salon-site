require 'test_helper'

class User::TaskCoursesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_task_courses_index_url
    assert_response :success
  end

end
