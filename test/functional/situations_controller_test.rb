require 'test_helper'

class SituationsControllerTest < ActionController::TestCase
  setup do
    @situation = situations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should create situation" do
    assert_difference('Situation.count') do
      post :create, situation: @situation.attributes
    end
  end
end
