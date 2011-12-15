require 'test_helper'

class SituationsControllerTest < ActionController::TestCase
  setup do
    @situation = situations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:situations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create situation" do
    assert_difference('Situation.count') do
      post :create, situation: @situation.attributes
    end

    assert_redirected_to situation_path(assigns(:situation))
  end

  test "should show situation" do
    get :show, id: @situation.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @situation.to_param
    assert_response :success
  end

  test "should update situation" do
    put :update, id: @situation.to_param, situation: @situation.attributes
    assert_redirected_to situation_path(assigns(:situation))
  end

  test "should destroy situation" do
    assert_difference('Situation.count', -1) do
      delete :destroy, id: @situation.to_param
    end

    assert_redirected_to situations_path
  end
end
