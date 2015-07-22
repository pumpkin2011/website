require 'test_helper'

class MainmenusControllerTest < ActionController::TestCase
  setup do
    @mainmenu = mainmenus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mainmenus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mainmenu" do
    assert_difference('Mainmenu.count') do
      post :create, mainmenu: { content: @mainmenu.content, main_pic_url: @mainmenu.main_pic_url }
    end

    assert_redirected_to mainmenu_path(assigns(:mainmenu))
  end

  test "should show mainmenu" do
    get :show, id: @mainmenu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mainmenu
    assert_response :success
  end

  test "should update mainmenu" do
    patch :update, id: @mainmenu, mainmenu: { content: @mainmenu.content, main_pic_url: @mainmenu.main_pic_url }
    assert_redirected_to mainmenu_path(assigns(:mainmenu))
  end

  test "should destroy mainmenu" do
    assert_difference('Mainmenu.count', -1) do
      delete :destroy, id: @mainmenu
    end

    assert_redirected_to mainmenus_path
  end
end
