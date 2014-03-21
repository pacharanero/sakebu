require 'test_helper'

class DictationControllerTest < ActionController::TestCase
  test "should get forename" do
    get :forename
    assert_response :success
  end

  test "should get surname" do
    get :surname
    assert_response :success
  end

  test "should get nhs_number" do
    get :nhs_number
    assert_response :success
  end

  test "should get dictation_path" do
    get :dictation_path
    assert_response :success
  end

end
