require 'test_helper'

class FriendshipcommentsControllerTest < ActionController::TestCase
  setup do
    @friendshipcomment = friendshipcomments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:friendshipcomments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create friendshipcomment" do
    assert_difference('Friendshipcomment.count') do
      post :create, friendshipcomment: {  }
    end

    assert_redirected_to friendshipcomment_path(assigns(:friendshipcomment))
  end

  test "should show friendshipcomment" do
    get :show, id: @friendshipcomment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @friendshipcomment
    assert_response :success
  end

  test "should update friendshipcomment" do
    put :update, id: @friendshipcomment, friendshipcomment: {  }
    assert_redirected_to friendshipcomment_path(assigns(:friendshipcomment))
  end

  test "should destroy friendshipcomment" do
    assert_difference('Friendshipcomment.count', -1) do
      delete :destroy, id: @friendshipcomment
    end

    assert_redirected_to friendshipcomments_path
  end
end
