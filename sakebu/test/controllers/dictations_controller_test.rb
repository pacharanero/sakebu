require 'test_helper'

class DictationsControllerTest < ActionController::TestCase
  setup do
    @dictation = dictations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dictations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dictation" do
    assert_difference('Dictation.count') do
      post :create, dictation: { forename: @dictation.forename, nhs_number: @dictation.nhs_number, path_to_audio: @dictation.path_to_audio, surname: @dictation.surname }
    end

    assert_redirected_to dictation_path(assigns(:dictation))
  end

  test "should show dictation" do
    get :show, id: @dictation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dictation
    assert_response :success
  end

  test "should update dictation" do
    patch :update, id: @dictation, dictation: { forename: @dictation.forename, nhs_number: @dictation.nhs_number, path_to_audio: @dictation.path_to_audio, surname: @dictation.surname }
    assert_redirected_to dictation_path(assigns(:dictation))
  end

  test "should destroy dictation" do
    assert_difference('Dictation.count', -1) do
      delete :destroy, id: @dictation
    end

    assert_redirected_to dictations_path
  end
end
