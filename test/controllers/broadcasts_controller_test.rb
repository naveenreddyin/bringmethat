require 'test_helper'

class BroadcastsControllerTest < ActionController::TestCase
  setup do
    @broadcast = broadcasts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:broadcasts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create broadcast" do
    assert_difference('Broadcast.count') do
      post :create, broadcast: { amount: @broadcast.amount, city_travelling_to: @broadcast.city_travelling_to, country_travelling_to: @broadcast.country_travelling_to, currency_id: @broadcast.currency_id, description: @broadcast.description, reaching_date: @broadcast.reaching_date, reaching_time: @broadcast.reaching_time, title: @broadcast.title, travel_date: @broadcast.travel_date, weight: @broadcast.weight }
    end

    assert_redirected_to broadcast_path(assigns(:broadcast))
  end

  test "should show broadcast" do
    get :show, id: @broadcast
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @broadcast
    assert_response :success
  end

  test "should update broadcast" do
    patch :update, id: @broadcast, broadcast: { amount: @broadcast.amount, city_travelling_to: @broadcast.city_travelling_to, country_travelling_to: @broadcast.country_travelling_to, currency_id: @broadcast.currency_id, description: @broadcast.description, reaching_date: @broadcast.reaching_date, reaching_time: @broadcast.reaching_time, title: @broadcast.title, travel_date: @broadcast.travel_date, weight: @broadcast.weight }
    assert_redirected_to broadcast_path(assigns(:broadcast))
  end

  test "should destroy broadcast" do
    assert_difference('Broadcast.count', -1) do
      delete :destroy, id: @broadcast
    end

    assert_redirected_to broadcasts_path
  end
end
