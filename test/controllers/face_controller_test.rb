require 'test_helper'

class FaceControllerTest < ActionController::TestCase
  test "should get face_index" do
    get :face_index
    assert_response :success
  end

end
