require 'test_helper'

class RestrictedControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get restricted" do
    get :restricted
    assert_response :success
  end

end
