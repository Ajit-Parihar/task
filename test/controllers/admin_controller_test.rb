require "test_helper"

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_index_url
    assert_response :success
  end

  test "should get new" do
    get admin_new_url
    assert_response :success
  end

  test "should get edit" do
    get admin_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_destroy_url
    assert_response :success
  end
end
