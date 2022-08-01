require "test_helper"

class AmazonloginpagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @amazonloginpage = amazonloginpages(:one)
  end

  test "should get index" do
    get amazonloginpages_url
    assert_response :success
  end

  test "should get new" do
    get new_amazonloginpage_url
    assert_response :success
  end

  test "should create amazonloginpage" do
    assert_difference("Amazonloginpage.count") do
      post amazonloginpages_url, params: { amazonloginpage: { lastname: @amazonloginpage.lastname, username: @amazonloginpage.username } }
    end

    assert_redirected_to amazonloginpage_url(Amazonloginpage.last)
  end

  test "should show amazonloginpage" do
    get amazonloginpage_url(@amazonloginpage)
    assert_response :success
  end

  test "should get edit" do
    get edit_amazonloginpage_url(@amazonloginpage)
    assert_response :success
  end

  test "should update amazonloginpage" do
    patch amazonloginpage_url(@amazonloginpage), params: { amazonloginpage: { lastname: @amazonloginpage.lastname, username: @amazonloginpage.username } }
    assert_redirected_to amazonloginpage_url(@amazonloginpage)
  end

  test "should destroy amazonloginpage" do
    assert_difference("Amazonloginpage.count", -1) do
      delete amazonloginpage_url(@amazonloginpage)
    end

    assert_redirected_to amazonloginpages_url
  end
end
