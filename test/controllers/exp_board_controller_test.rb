require 'test_helper'

class ExpBoardControllerTest < ActionController::TestCase
  test "should get exp_index" do
    get :exp_index
    assert_response :success
  end

  test "should get exp_create" do
    get :exp_create
    assert_response :success
  end

  test "should get exp_new" do
    get :exp_new
    assert_response :success
  end

  test "should get exp_edit" do
    get :exp_edit
    assert_response :success
  end

  test "should get exp_destroy" do
    get :exp_destroy
    assert_response :success
  end

end
