require "application_system_test_case"

class AddressesTest < ApplicationSystemTestCase
  setup do
    @address = addresses(:one)
  end

  test "visiting the index" do
    visit addresses_url
    assert_selector "h1", text: "Addresses"
  end

  test "should create address" do
    visit addresses_url
    click_on "New address"

    fill_in "City", with: @address.city
    check "Is default" if @address.is_default
    fill_in "Phone", with: @address.phone
    fill_in "Postal code", with: @address.postal_code
    fill_in "Recipient name", with: @address.recipient_name
    fill_in "Region", with: @address.region
    fill_in "Street address", with: @address.street_address
    fill_in "User", with: @address.user_id
    click_on "Create Address"

    assert_text "Address was successfully created"
    click_on "Back"
  end

  test "should update Address" do
    visit address_url(@address)
    click_on "Edit this address", match: :first

    fill_in "City", with: @address.city
    check "Is default" if @address.is_default
    fill_in "Phone", with: @address.phone
    fill_in "Postal code", with: @address.postal_code
    fill_in "Recipient name", with: @address.recipient_name
    fill_in "Region", with: @address.region
    fill_in "Street address", with: @address.street_address
    fill_in "User", with: @address.user_id
    click_on "Update Address"

    assert_text "Address was successfully updated"
    click_on "Back"
  end

  test "should destroy Address" do
    visit address_url(@address)
    accept_confirm { click_on "Destroy this address", match: :first }

    assert_text "Address was successfully destroyed"
  end
end
