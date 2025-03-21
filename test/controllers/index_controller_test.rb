require "test_helper"

class IndexControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get index_new_url
    assert_response :success
  end

  test "should get edit" do
    get index_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get index_destroy_url
    assert_response :success
  end
end
