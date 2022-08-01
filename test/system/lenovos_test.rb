require "application_system_test_case"

class LenovosTest < ApplicationSystemTestCase
  setup do
    @lenovo = lenovos(:one)
  end

  test "visiting the index" do
    visit lenovos_url
    assert_selector "h1", text: "Lenovos"
  end

  test "should create lenovo" do
    visit lenovos_url
    click_on "New lenovo"

    fill_in "Name", with: @lenovo.name
    fill_in "Price", with: @lenovo.price
    click_on "Create Lenovo"

    assert_text "Lenovo was successfully created"
    click_on "Back"
  end

  test "should update Lenovo" do
    visit lenovo_url(@lenovo)
    click_on "Edit this lenovo", match: :first

    fill_in "Name", with: @lenovo.name
    fill_in "Price", with: @lenovo.price
    click_on "Update Lenovo"

    assert_text "Lenovo was successfully updated"
    click_on "Back"
  end

  test "should destroy Lenovo" do
    visit lenovo_url(@lenovo)
    click_on "Destroy this lenovo", match: :first

    assert_text "Lenovo was successfully destroyed"
  end
end
