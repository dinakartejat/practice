require "test_helper"

class LenovosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lenovo = lenovos(:one)
  end

  test "should get index" do
    get lenovos_url
    assert_response :success
  end

  test "should get new" do
    get new_lenovo_url
    assert_response :success
  end

  test "should create lenovo" do
    assert_difference("Lenovo.count") do
      post lenovos_url, params: { lenovo: { name: @lenovo.name, price: @lenovo.price } }
    end

    assert_redirected_to lenovo_url(Lenovo.last)
  end

  test "should show lenovo" do
    get lenovo_url(@lenovo)
    assert_response :success
  end

  test "should get edit" do
    get edit_lenovo_url(@lenovo)
    assert_response :success
  end

  test "should update lenovo" do
    patch lenovo_url(@lenovo), params: { lenovo: { name: @lenovo.name, price: @lenovo.price } }
    assert_redirected_to lenovo_url(@lenovo)
  end

  test "should destroy lenovo" do
    assert_difference("Lenovo.count", -1) do
      delete lenovo_url(@lenovo)
    end

    assert_redirected_to lenovos_url
  end
end
