require "application_system_test_case"

class SkybagsTest < ApplicationSystemTestCase
  setup do
    @skybag = skybags(:one)
  end

  test "visiting the index" do
    visit skybags_url
    assert_selector "h1", text: "Skybags"
  end

  test "should create skybag" do
    visit skybags_url
    click_on "New skybag"

    fill_in "Name", with: @skybag.name
    click_on "Create Skybag"

    assert_text "Skybag was successfully created"
    click_on "Back"
  end

  test "should update Skybag" do
    visit skybag_url(@skybag)
    click_on "Edit this skybag", match: :first

    fill_in "Name", with: @skybag.name
    click_on "Update Skybag"

    assert_text "Skybag was successfully updated"
    click_on "Back"
  end

  test "should destroy Skybag" do
    visit skybag_url(@skybag)
    click_on "Destroy this skybag", match: :first

    assert_text "Skybag was successfully destroyed"
  end
end
