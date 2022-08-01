require "application_system_test_case"

class DellsTest < ApplicationSystemTestCase
  setup do
    @dell = dells(:one)
  end

  test "visiting the index" do
    visit dells_url
    assert_selector "h1", text: "Dells"
  end

  test "should create dell" do
    visit dells_url
    click_on "New dell"

    fill_in "Name", with: @dell.name
    fill_in "Ram", with: @dell.ram
    click_on "Create Dell"

    assert_text "Dell was successfully created"
    click_on "Back"
  end

  test "should update Dell" do
    visit dell_url(@dell)
    click_on "Edit this dell", match: :first

    fill_in "Name", with: @dell.name
    fill_in "Ram", with: @dell.ram
    click_on "Update Dell"

    assert_text "Dell was successfully updated"
    click_on "Back"
  end

  test "should destroy Dell" do
    visit dell_url(@dell)
    click_on "Destroy this dell", match: :first

    assert_text "Dell was successfully destroyed"
  end
end
