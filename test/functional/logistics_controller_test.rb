require 'test_helper'

class LogisticsControllerTest < ActionController::TestCase
  setup do
    @logistic = logistics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:logistics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create logistic" do
    assert_difference('Logistic.count') do
      post :create, logistic: @logistic.attributes
    end

    assert_redirected_to logistic_path(assigns(:logistic))
  end

  test "should show logistic" do
    get :show, id: @logistic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @logistic
    assert_response :success
  end

  test "should update logistic" do
    put :update, id: @logistic, logistic: @logistic.attributes
    assert_redirected_to logistic_path(assigns(:logistic))
  end

  test "should destroy logistic" do
    assert_difference('Logistic.count', -1) do
      delete :destroy, id: @logistic
    end

    assert_redirected_to logistics_path
  end
end
