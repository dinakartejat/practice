require "application_system_test_case"

class FlipkartsTest < ApplicationSystemTestCase
  setup do
    @flipkart = flipkarts(:one)
  end

  test "visiting the index" do
    visit flipkarts_url
    assert_selector "h1", text: "Flipkarts"
  end

  test "should create flipkart" do
    visit flipkarts_url
    click_on "New flipkart"

    fill_in "Password", with: @flipkart.password
    fill_in "Username", with: @flipkart.username
    click_on "Create Flipkart"

    assert_text "Flipkart was successfully created"
    click_on "Back"
  end

  test "should update Flipkart" do
    visit flipkart_url(@flipkart)
    click_on "Edit this flipkart", match: :first

    fill_in "Password", with: @flipkart.password
    fill_in "Username", with: @flipkart.username
    click_on "Update Flipkart"

    assert_text "Flipkart was successfully updated"
    click_on "Back"
  end

  test "should destroy Flipkart" do
    visit flipkart_url(@flipkart)
    click_on "Destroy this flipkart", match: :first

    assert_text "Flipkart was successfully destroyed"
  end
end
