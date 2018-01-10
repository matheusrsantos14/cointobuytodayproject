require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get dash" do
    get user_dash_url
    assert_response :success
  end

end
