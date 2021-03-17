require 'test_helper'

class Public::TempletesControllerTest < ActionDispatch::IntegrationTest
  test "should get not_released_page" do
    get public_templetes_not_released_page_url
    assert_response :success
  end

end
