require "test_helper"

class Admin::VendorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_vendors_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_vendors_show_url
    assert_response :success
  end

  test "should get approve" do
    get admin_vendors_approve_url
    assert_response :success
  end

  test "should get reject" do
    get admin_vendors_reject_url
    assert_response :success
  end

  test "should get suspend" do
    get admin_vendors_suspend_url
    assert_response :success
  end

  test "should get update" do
    get admin_vendors_update_url
    assert_response :success
  end
end
