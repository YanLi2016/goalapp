require 'test_helper'

class DailygoalsControllerTest < ActionController::TestCase
  setup do
    @dailygoal = dailygoals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dailygoals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dailygoal" do
    assert_difference('Dailygoal.count') do
      post :create, dailygoal: { comment: @dailygoal.comment, description: @dailygoal.description, done: @dailygoal.done }
    end

    assert_redirected_to dailygoal_path(assigns(:dailygoal))
  end

  test "should show dailygoal" do
    get :show, id: @dailygoal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dailygoal
    assert_response :success
  end

  test "should update dailygoal" do
    patch :update, id: @dailygoal, dailygoal: { comment: @dailygoal.comment, description: @dailygoal.description, done: @dailygoal.done }
    assert_redirected_to dailygoal_path(assigns(:dailygoal))
  end

  test "should destroy dailygoal" do
    assert_difference('Dailygoal.count', -1) do
      delete :destroy, id: @dailygoal
    end

    assert_redirected_to dailygoals_path
  end
end
