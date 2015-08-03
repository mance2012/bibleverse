require 'test_helper'

class ImagefilesControllerTest < ActionController::TestCase
  setup do
    @imagefile = imagefiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:imagefiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create imagefile" do
    assert_difference('Imagefile.count') do
      post :create, imagefile: {  }
    end

    assert_redirected_to imagefile_path(assigns(:imagefile))
  end

  test "should show imagefile" do
    get :show, id: @imagefile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @imagefile
    assert_response :success
  end

  test "should update imagefile" do
    patch :update, id: @imagefile, imagefile: {  }
    assert_redirected_to imagefile_path(assigns(:imagefile))
  end

  test "should destroy imagefile" do
    assert_difference('Imagefile.count', -1) do
      delete :destroy, id: @imagefile
    end

    assert_redirected_to imagefiles_path
  end
end
