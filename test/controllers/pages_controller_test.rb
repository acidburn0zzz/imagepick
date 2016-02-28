require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get 1-post" do
    get :1-post
    assert_response :success
  end

  test "should get 2-post" do
    get :2-post
    assert_response :success
  end

  test "should get 3-post" do
    get :3-post
    assert_response :success
  end

  test "should get 4-post" do
    get :4-post
    assert_response :success
  end

  test "should get 5-post" do
    get :5-post
    assert_response :success
  end

end
