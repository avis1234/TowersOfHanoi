require 'test_helper'

class HanoiControllerTest < ActionController::TestCase
  test "should get set_rings" do
    get :set_rings
    assert_response :success
  end

  test "should get start" do
    get :start
    assert_response :success
  end

  test "should get next_move" do
    get :next_move
    assert_response :success
  end

end
