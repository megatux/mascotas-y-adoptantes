require 'test_helper'

class AdoptersControllerTest < ActionController::TestCase

  context "get #index" do
    setup do
      get :index
    end

    should "return HTTP success" do
      assert_response :success
    end

    should "assigns adopters" do
      assert_not_nil assigns(:adopters)
    end
  end
end
