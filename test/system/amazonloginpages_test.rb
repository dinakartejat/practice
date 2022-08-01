require "application_system_test_case"

class AmazonloginpagesTest < ApplicationSystemTestCase
  setup do
    @amazonloginpage = amazonloginpages(:one)
  end

  test "visiting the index" do
    visit amazonloginpages_url
    assert_selector "h1", text: "Amazonloginpages"
  end

  test "should create amazonloginpage" do
    visit amazonloginpages_url
    click_on "New amazonloginpage"

    fill_in "Lastname", with: @amazonloginpage.lastname
    fill_in "Username", with: @amazonloginpage.username
    click_on "Create Amazonloginpage"

    assert_text "Amazonloginpage was successfully created"
    click_on "Back"
  end

  test "should update Amazonloginpage" do
    visit amazonloginpage_url(@amazonloginpage)
    click_on "Edit this amazonloginpage", match: :first

    fill_in "Lastname", with: @amazonloginpage.lastname
    fill_in "Username", with: @amazonloginpage.username
    click_on "Update Amazonloginpage"

    assert_text "Amazonloginpage was successfully updated"
    click_on "Back"
  end

  test "should destroy Amazonloginpage" do
    visit amazonloginpage_url(@amazonloginpage)
    click_on "Destroy this amazonloginpage", match: :first

    assert_text "Amazonloginpage was successfully destroyed"
  end
end
