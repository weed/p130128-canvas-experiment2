require 'test_helper'

class View01ControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
