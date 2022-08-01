require "test_helper"

class SkybagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @skybag = skybags(:one)
  end

  test "should get index" do
    get skybags_url
    assert_response :success
  end

  test "should get new" do
    get new_skybag_url
    assert_response :success
  end

  test "should create skybag" do
    assert_difference("Skybag.count") do
      post skybags_url, params: { skybag: { name: @skybag.name } }
    end

    assert_redirected_to skybag_url(Skybag.last)
  end

  test "should show skybag" do
    get skybag_url(@skybag)
    assert_response :success
  end

  test "should get edit" do
    get edit_skybag_url(@skybag)
    assert_response :success
  end

  test "should update skybag" do
    patch skybag_url(@skybag), params: { skybag: { name: @skybag.name } }
    assert_redirected_to skybag_url(@skybag)
  end

  test "should destroy skybag" do
    assert_difference("Skybag.count", -1) do
      delete skybag_url(@skybag)
    end

    assert_redirected_to skybags_url
  end
end
