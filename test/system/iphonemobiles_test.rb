require "application_system_test_case"

class IphonemobilesTest < ApplicationSystemTestCase
  setup do
    @iphonemobile = iphonemobiles(:one)
  end

  test "visiting the index" do
    visit iphonemobiles_url
    assert_selector "h1", text: "Iphonemobiles"
  end

  test "should create iphonemobile" do
    visit iphonemobiles_url
    click_on "New iphonemobile"

    fill_in "Name", with: @iphonemobile.name
    fill_in "Price", with: @iphonemobile.price
    click_on "Create Iphonemobile"

    assert_text "Iphonemobile was successfully created"
    click_on "Back"
  end

  test "should update Iphonemobile" do
    visit iphonemobile_url(@iphonemobile)
    click_on "Edit this iphonemobile", match: :first

    fill_in "Name", with: @iphonemobile.name
    fill_in "Price", with: @iphonemobile.price
    click_on "Update Iphonemobile"

    assert_text "Iphonemobile was successfully updated"
    click_on "Back"
  end

  test "should destroy Iphonemobile" do
    visit iphonemobile_url(@iphonemobile)
    click_on "Destroy this iphonemobile", match: :first

    assert_text "Iphonemobile was successfully destroyed"
  end
end
