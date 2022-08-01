require "application_system_test_case"

class PantsTest < ApplicationSystemTestCase
  setup do
    @pant = pants(:one)
  end

  test "visiting the index" do
    visit pants_url
    assert_selector "h1", text: "Pants"
  end

  test "should create pant" do
    visit pants_url
    click_on "New pant"

    fill_in "Name", with: @pant.name
    click_on "Create Pant"

    assert_text "Pant was successfully created"
    click_on "Back"
  end

  test "should update Pant" do
    visit pant_url(@pant)
    click_on "Edit this pant", match: :first

    fill_in "Name", with: @pant.name
    click_on "Update Pant"

    assert_text "Pant was successfully updated"
    click_on "Back"
  end

  test "should destroy Pant" do
    visit pant_url(@pant)
    click_on "Destroy this pant", match: :first

    assert_text "Pant was successfully destroyed"
  end
end
