require 'test_helper'

class TheatresControllerTest < ActionController::TestCase
  setup do
    @theatre = theatres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:theatres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create theatre" do
    assert_difference('Theatre.count') do
      post :create, theatre: { address: @theatre.address, cost: @theatre.cost, email: @theatre.email, name: @theatre.name, phone_number: @theatre.phone_number }
    end

    assert_redirected_to theatre_path(assigns(:theatre))
  end

  test "should show theatre" do
    get :show, id: @theatre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @theatre
    assert_response :success
  end

  test "should update theatre" do
    patch :update, id: @theatre, theatre: { address: @theatre.address, cost: @theatre.cost, email: @theatre.email, name: @theatre.name, phone_number: @theatre.phone_number }
    assert_redirected_to theatre_path(assigns(:theatre))
  end

  test "should destroy theatre" do
    assert_difference('Theatre.count', -1) do
      delete :destroy, id: @theatre
    end

    assert_redirected_to theatres_path
  end
end
