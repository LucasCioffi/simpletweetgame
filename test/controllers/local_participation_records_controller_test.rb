require 'test_helper'

class LocalParticipationRecordsControllerTest < ActionController::TestCase
  setup do
    @local_participation_record = local_participation_records(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:local_participation_records)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create local_participation_record" do
    assert_difference('LocalParticipationRecord.count') do
      post :create, local_participation_record: { board_id: @local_participation_record.board_id, num_invites: @local_participation_record.num_invites, num_moves: @local_participation_record.num_moves, user_id: @local_participation_record.user_id, xpos: @local_participation_record.xpos, ypos: @local_participation_record.ypos }
    end

    assert_redirected_to local_participation_record_path(assigns(:local_participation_record))
  end

  test "should show local_participation_record" do
    get :show, id: @local_participation_record
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @local_participation_record
    assert_response :success
  end

  test "should update local_participation_record" do
    patch :update, id: @local_participation_record, local_participation_record: { board_id: @local_participation_record.board_id, num_invites: @local_participation_record.num_invites, num_moves: @local_participation_record.num_moves, user_id: @local_participation_record.user_id, xpos: @local_participation_record.xpos, ypos: @local_participation_record.ypos }
    assert_redirected_to local_participation_record_path(assigns(:local_participation_record))
  end

  test "should destroy local_participation_record" do
    assert_difference('LocalParticipationRecord.count', -1) do
      delete :destroy, id: @local_participation_record
    end

    assert_redirected_to local_participation_records_path
  end
end
