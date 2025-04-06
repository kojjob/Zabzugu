require "application_system_test_case"

class VendorsTest < ApplicationSystemTestCase
  setup do
    @vendor = vendors(:one)
  end

  test "visiting the index" do
    visit vendors_url
    assert_selector "h1", text: "Vendors"
  end

  test "should create vendor" do
    visit vendors_url
    click_on "New vendor"

    fill_in "Business name", with: @vendor.business_name
    fill_in "Commission rate", with: @vendor.commission_rate
    fill_in "Description", with: @vendor.description
    fill_in "Phone number", with: @vendor.phone_number
    fill_in "Status", with: @vendor.status
    fill_in "Tax", with: @vendor.tax_id
    fill_in "User", with: @vendor.user_id
    click_on "Create Vendor"

    assert_text "Vendor was successfully created"
    click_on "Back"
  end

  test "should update Vendor" do
    visit vendor_url(@vendor)
    click_on "Edit this vendor", match: :first

    fill_in "Business name", with: @vendor.business_name
    fill_in "Commission rate", with: @vendor.commission_rate
    fill_in "Description", with: @vendor.description
    fill_in "Phone number", with: @vendor.phone_number
    fill_in "Status", with: @vendor.status
    fill_in "Tax", with: @vendor.tax_id
    fill_in "User", with: @vendor.user_id
    click_on "Update Vendor"

    assert_text "Vendor was successfully updated"
    click_on "Back"
  end

  test "should destroy Vendor" do
    visit vendor_url(@vendor)
    accept_confirm { click_on "Destroy this vendor", match: :first }

    assert_text "Vendor was successfully destroyed"
  end
end
