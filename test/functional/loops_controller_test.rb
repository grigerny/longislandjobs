require 'test_helper'

class LoopsControllerTest < ActionController::TestCase
  setup do
    @loop = loops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:loops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create loop" do
    assert_difference('Loop.count') do
      post :create, loop: {  }
    end

    assert_redirected_to loop_path(assigns(:loop))
  end

  test "should show loop" do
    get :show, id: @loop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @loop
    assert_response :success
  end

  test "should update loop" do
    put :update, id: @loop, loop: {  }
    assert_redirected_to loop_path(assigns(:loop))
  end

  test "should destroy loop" do
    assert_difference('Loop.count', -1) do
      delete :destroy, id: @loop
    end

    assert_redirected_to loops_path
  end
end
