require 'test_helper'

class PropertysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get propertys_index_url
    assert_response :success
  end

  test "should get new" do
    get propertys_new_url
    assert_response :success
  end

  test "should get show" do
    get propertys_show_url
    assert_response :success
  end

  test "should get destroy" do
    get propertys_destroy_url
    assert_response :success
  end

end
