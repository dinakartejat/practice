require "application_system_test_case"

class FbsTest < ApplicationSystemTestCase
  setup do
    @fb = fbs(:one)
  end

  test "visiting the index" do
    visit fbs_url
    assert_selector "h1", text: "Fbs"
  end

  test "should create fb" do
    visit fbs_url
    click_on "New fb"

    fill_in "Firstname", with: @fb.firstname
    click_on "Create Fb"

    assert_text "Fb was successfully created"
    click_on "Back"
  end

  test "should update Fb" do
    visit fb_url(@fb)
    click_on "Edit this fb", match: :first

    fill_in "Firstname", with: @fb.firstname
    click_on "Update Fb"

    assert_text "Fb was successfully updated"
    click_on "Back"
  end

  test "should destroy Fb" do
    visit fb_url(@fb)
    click_on "Destroy this fb", match: :first

    assert_text "Fb was successfully destroyed"
  end
end
