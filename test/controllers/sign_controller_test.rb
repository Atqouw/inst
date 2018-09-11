require 'test_helper'

class SignControllerTest < ActionDispatch::IntegrationTest
  test "should get sign" do
    get sign_sign_url
    assert_response :success
  end

end
