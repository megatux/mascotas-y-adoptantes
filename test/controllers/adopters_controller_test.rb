require 'test_helper'

class AdoptersControllerTest < ActionController::TestCase

  should "defined the index route" do
    assert_recognizes({controller: 'adopters', action: 'index'}, 'adopters')
  end

  context "get #index" do
    setup do
      get :index
    end

    should "return HTTP success" do
      assert_response :success
    end

    should "assigns adopters" do
      refute_nil assigns(:adopters)
    end

    context "with some adopters" do
      should "list them" do
        adopters = assigns(:adopters)
        assert_equal(2, adopters.length)
      end
    end
  end
end
