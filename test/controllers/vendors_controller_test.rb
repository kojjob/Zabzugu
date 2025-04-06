require "test_helper"

class VendorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vendor = vendors(:one)
  end

  test "should get index" do
    get vendors_url
    assert_response :success
  end

  test "should get new" do
    get new_vendor_url
    assert_response :success
  end

  test "should create vendor" do
    assert_difference("Vendor.count") do
      post vendors_url, params: { vendor: { business_name: @vendor.business_name, commission_rate: @vendor.commission_rate, description: @vendor.description, phone_number: @vendor.phone_number, status: @vendor.status, tax_id: @vendor.tax_id, user_id: @vendor.user_id } }
    end

    assert_redirected_to vendor_url(Vendor.last)
  end

  test "should show vendor" do
    get vendor_url(@vendor)
    assert_response :success
  end

  test "should get edit" do
    get edit_vendor_url(@vendor)
    assert_response :success
  end

  test "should update vendor" do
    patch vendor_url(@vendor), params: { vendor: { business_name: @vendor.business_name, commission_rate: @vendor.commission_rate, description: @vendor.description, phone_number: @vendor.phone_number, status: @vendor.status, tax_id: @vendor.tax_id, user_id: @vendor.user_id } }
    assert_redirected_to vendor_url(@vendor)
  end

  test "should destroy vendor" do
    assert_difference("Vendor.count", -1) do
      delete vendor_url(@vendor)
    end

    assert_redirected_to vendors_url
  end
end
