require 'test_helper'

class PoststatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poststatus = poststatuses(:one)
  end

  test "should get index" do
    get poststatuses_url
    assert_response :success
  end

  test "should get new" do
    get new_poststatus_url
    assert_response :success
  end

  test "should create poststatus" do
    assert_difference('Poststatus.count') do
      post poststatuses_url, params: { poststatus: { post_state: @poststatus.post_state, sermon_id: @poststatus.sermon_id } }
    end

    assert_redirected_to poststatus_url(Poststatus.last)
  end

  test "should show poststatus" do
    get poststatus_url(@poststatus)
    assert_response :success
  end

  test "should get edit" do
    get edit_poststatus_url(@poststatus)
    assert_response :success
  end

  test "should update poststatus" do
    patch poststatus_url(@poststatus), params: { poststatus: { post_state: @poststatus.post_state, sermon_id: @poststatus.sermon_id } }
    assert_redirected_to poststatus_url(@poststatus)
  end

  test "should destroy poststatus" do
    assert_difference('Poststatus.count', -1) do
      delete poststatus_url(@poststatus)
    end

    assert_redirected_to poststatuses_url
  end
end
