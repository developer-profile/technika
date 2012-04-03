require 'test_helper'

class AnaliticsControllerTest < ActionController::TestCase
  setup do
    @analitic = analitics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:analitics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create analitic" do
    assert_difference('Analitic.count') do
      post :create, analitic: @analitic.attributes
    end

    assert_redirected_to analitic_path(assigns(:analitic))
  end

  test "should show analitic" do
    get :show, id: @analitic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @analitic
    assert_response :success
  end

  test "should update analitic" do
    put :update, id: @analitic, analitic: @analitic.attributes
    assert_redirected_to analitic_path(assigns(:analitic))
  end

  test "should destroy analitic" do
    assert_difference('Analitic.count', -1) do
      delete :destroy, id: @analitic
    end

    assert_redirected_to analitics_path
  end
end
