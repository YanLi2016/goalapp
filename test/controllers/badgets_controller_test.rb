require 'test_helper'

class BadgetsControllerTest < ActionController::TestCase
  setup do
    @badget = badgets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:badgets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create badget" do
    assert_difference('Badget.count') do
      post :create, badget: { level: @badget.level, name: @badget.name }
    end

    assert_redirected_to badget_path(assigns(:badget))
  end

  test "should show badget" do
    get :show, id: @badget
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @badget
    assert_response :success
  end

  test "should update badget" do
    patch :update, id: @badget, badget: { level: @badget.level, name: @badget.name }
    assert_redirected_to badget_path(assigns(:badget))
  end

  test "should destroy badget" do
    assert_difference('Badget.count', -1) do
      delete :destroy, id: @badget
    end

    assert_redirected_to badgets_path
  end
end
