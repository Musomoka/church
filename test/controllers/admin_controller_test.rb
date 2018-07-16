require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get publish" do
    get admin_publish_url
    assert_response :success
  end

  test "should get author" do
    get admin_author_url
    assert_response :success
  end

  test "should get people" do
    get admin_people_url
    assert_response :success
  end

end
