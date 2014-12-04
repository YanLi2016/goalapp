require 'test_helper'

class MygoalsControllerTest < ActionController::TestCase
  setup do
    @mygoal = mygoals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mygoals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mygoal" do
    assert_difference('Mygoal.count') do
      post :create, mygoal: { days: @mygoal.days, finish: @mygoal.finish, name: @mygoal.name, start: @mygoal.start }
    end

    assert_redirected_to mygoal_path(assigns(:mygoal))
  end

  test "should show mygoal" do
    get :show, id: @mygoal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mygoal
    assert_response :success
  end

  test "should update mygoal" do
    patch :update, id: @mygoal, mygoal: { days: @mygoal.days, finish: @mygoal.finish, name: @mygoal.name, start: @mygoal.start }
    assert_redirected_to mygoal_path(assigns(:mygoal))
  end

  test "should destroy mygoal" do
    assert_difference('Mygoal.count', -1) do
      delete :destroy, id: @mygoal
    end

    assert_redirected_to mygoals_path
  end
end
