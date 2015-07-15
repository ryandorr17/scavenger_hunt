require 'test_helper'

class CluesControllerTest < ActionController::TestCase
  setup do
    @clue = clues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clue" do
    assert_difference('Clue.count') do
      post :create, clue: { answer: @clue.answer, clue: @clue.clue, location: @clue.location, stop: @clue.stop, time: @clue.time }
    end

    assert_redirected_to clue_path(assigns(:clue))
  end

  test "should show clue" do
    get :show, id: @clue
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clue
    assert_response :success
  end

  test "should update clue" do
    patch :update, id: @clue, clue: { answer: @clue.answer, clue: @clue.clue, location: @clue.location, stop: @clue.stop, time: @clue.time }
    assert_redirected_to clue_path(assigns(:clue))
  end

  test "should destroy clue" do
    assert_difference('Clue.count', -1) do
      delete :destroy, id: @clue
    end

    assert_redirected_to clues_path
  end
end