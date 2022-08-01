require "test_helper"

class FlipkartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flipkart = flipkarts(:one)
  end

  test "should get index" do
    get flipkarts_url
    assert_response :success
  end

  test "should get new" do
    get new_flipkart_url
    assert_response :success
  end

  test "should create flipkart" do
    assert_difference("Flipkart.count") do
      post flipkarts_url, params: { flipkart: { password: @flipkart.password, username: @flipkart.username } }
    end

    assert_redirected_to flipkart_url(Flipkart.last)
  end

  test "should show flipkart" do
    get flipkart_url(@flipkart)
    assert_response :success
  end

  test "should get edit" do
    get edit_flipkart_url(@flipkart)
    assert_response :success
  end

  test "should update flipkart" do
    patch flipkart_url(@flipkart), params: { flipkart: { password: @flipkart.password, username: @flipkart.username } }
    assert_redirected_to flipkart_url(@flipkart)
  end

  test "should destroy flipkart" do
    assert_difference("Flipkart.count", -1) do
      delete flipkart_url(@flipkart)
    end

    assert_redirected_to flipkarts_url
  end
end
