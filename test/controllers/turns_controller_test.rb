require 'test_helper'

class TurnsControllerTest < ActionController::TestCase
  setup do
    @turn = turns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:turns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create turn" do
    assert_difference('Turn.count') do
      post :create, turn: { board_id: @turn.board_id, command: @turn.command, friend_username: @turn.friend_username, integer: @turn.integer, user_id: @turn.user_id, xpos: @turn.xpos, ypos: @turn.ypos }
    end

    assert_redirected_to turn_path(assigns(:turn))
  end

  test "should show turn" do
    get :show, id: @turn
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @turn
    assert_response :success
  end

  test "should update turn" do
    patch :update, id: @turn, turn: { board_id: @turn.board_id, command: @turn.command, friend_username: @turn.friend_username, integer: @turn.integer, user_id: @turn.user_id, xpos: @turn.xpos, ypos: @turn.ypos }
    assert_redirected_to turn_path(assigns(:turn))
  end

  test "should destroy turn" do
    assert_difference('Turn.count', -1) do
      delete :destroy, id: @turn
    end

    assert_redirected_to turns_path
  end
end
