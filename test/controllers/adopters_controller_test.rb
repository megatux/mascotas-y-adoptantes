require 'test_helper'

class AdoptersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "index should assigns adopters" do
    get :index
    assert_not_nil assigns(:adopters)
  end
end
