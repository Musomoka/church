require 'test_helper'

class UpcomingsControllerTest < ActionController::TestCase
  setup do
    @upcoming = upcomings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:upcomings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create upcoming" do
    assert_difference('Upcoming.count') do
      post :create, upcoming: { description: @upcoming.description, end: @upcoming.end, start: @upcoming.start, title: @upcoming.title }
    end

    assert_redirected_to upcoming_path(assigns(:upcoming))
  end

  test "should show upcoming" do
    get :show, id: @upcoming
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @upcoming
    assert_response :success
  end

  test "should update upcoming" do
    patch :update, id: @upcoming, upcoming: { description: @upcoming.description, end: @upcoming.end, start: @upcoming.start, title: @upcoming.title }
    assert_redirected_to upcoming_path(assigns(:upcoming))
  end

  test "should destroy upcoming" do
    assert_difference('Upcoming.count', -1) do
      delete :destroy, id: @upcoming
    end

    assert_redirected_to upcomings_path
  end
end
