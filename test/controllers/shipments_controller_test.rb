require "test_helper"

class ShipmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get shipments_show_url
    assert_response :success
  end

  test "should get edit" do
    get shipments_edit_url
    assert_response :success
  end
end
