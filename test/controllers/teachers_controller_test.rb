require 'test_helper'

class TeachersControllerTest < ActionController::TestCase
  test "should get update_password" do
    get :update_password
    assert_response :success
  end

  test "should get update_email" do
    get :update_email
    assert_response :success
  end

end
