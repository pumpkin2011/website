require 'test_helper'

class ConsoleDesksControllerTest < ActionController::TestCase
  setup do
    @console_desk = console_desks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:console_desks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create console_desk" do
    assert_difference('ConsoleDesk.count') do
      post :create, console_desk: {  }
    end

    assert_redirected_to console_desk_path(assigns(:console_desk))
  end

  test "should show console_desk" do
    get :show, id: @console_desk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @console_desk
    assert_response :success
  end

  test "should update console_desk" do
    patch :update, id: @console_desk, console_desk: {  }
    assert_redirected_to console_desk_path(assigns(:console_desk))
  end

  test "should destroy console_desk" do
    assert_difference('ConsoleDesk.count', -1) do
      delete :destroy, id: @console_desk
    end

    assert_redirected_to console_desks_path
  end
end
