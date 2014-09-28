require 'test_helper'

class HomeControllerTest < ActionController::TestCase

  should "defined the show route as root" do
    assert_recognizes({controller: 'home', action: 'show'}, '/')
  end

  context "get #show" do
    setup do
      get :show
    end

    should "return HTTP success" do
      assert_response :success
    end

    should "assigns top worse adopters" do
      refute_nil assigns(:adopters)
    end
  end
end
