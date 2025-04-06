require "application_system_test_case"

class ShippingMethodsTest < ApplicationSystemTestCase
  setup do
    @shipping_method = shipping_methods(:one)
  end

  test "visiting the index" do
    visit shipping_methods_url
    assert_selector "h1", text: "Shipping methods"
  end

  test "should create shipping method" do
    visit shipping_methods_url
    click_on "New shipping method"

    fill_in "Delivery estimate", with: @shipping_method.delivery_estimate
    fill_in "Name", with: @shipping_method.name
    fill_in "Provider", with: @shipping_method.provider
    click_on "Create Shipping method"

    assert_text "Shipping method was successfully created"
    click_on "Back"
  end

  test "should update Shipping method" do
    visit shipping_method_url(@shipping_method)
    click_on "Edit this shipping method", match: :first

    fill_in "Delivery estimate", with: @shipping_method.delivery_estimate
    fill_in "Name", with: @shipping_method.name
    fill_in "Provider", with: @shipping_method.provider
    click_on "Update Shipping method"

    assert_text "Shipping method was successfully updated"
    click_on "Back"
  end

  test "should destroy Shipping method" do
    visit shipping_method_url(@shipping_method)
    accept_confirm { click_on "Destroy this shipping method", match: :first }

    assert_text "Shipping method was successfully destroyed"
  end
end
