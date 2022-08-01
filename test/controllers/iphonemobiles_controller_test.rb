require "test_helper"

class IphonemobilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @iphonemobile = iphonemobiles(:one)
  end

  test "should get index" do
    get iphonemobiles_url
    assert_response :success
  end

  test "should get new" do
    get new_iphonemobile_url
    assert_response :success
  end

  test "should create iphonemobile" do
    assert_difference("Iphonemobile.count") do
      post iphonemobiles_url, params: { iphonemobile: { name: @iphonemobile.name, price: @iphonemobile.price } }
    end

    assert_redirected_to iphonemobile_url(Iphonemobile.last)
  end

  test "should show iphonemobile" do
    get iphonemobile_url(@iphonemobile)
    assert_response :success
  end

  test "should get edit" do
    get edit_iphonemobile_url(@iphonemobile)
    assert_response :success
  end

  test "should update iphonemobile" do
    patch iphonemobile_url(@iphonemobile), params: { iphonemobile: { name: @iphonemobile.name, price: @iphonemobile.price } }
    assert_redirected_to iphonemobile_url(@iphonemobile)
  end

  test "should destroy iphonemobile" do
    assert_difference("Iphonemobile.count", -1) do
      delete iphonemobile_url(@iphonemobile)
    end

    assert_redirected_to iphonemobiles_url
  end
end
