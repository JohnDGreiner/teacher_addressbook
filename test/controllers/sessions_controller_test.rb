require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  setup do
    login!
  end

  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get logout" do
    get :logout
    # assert_response :success
    assert_redirected_to sessions_login_path
  end

end
