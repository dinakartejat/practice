require "test_helper"

class DellsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dell = dells(:one)
  end

  test "should get index" do
    get dells_url
    assert_response :success
  end

  test "should get new" do
    get new_dell_url
    assert_response :success
  end

  test "should create dell" do
    assert_difference("Dell.count") do
      post dells_url, params: { dell: { name: @dell.name, ram: @dell.ram } }
    end

    assert_redirected_to dell_url(Dell.last)
  end

  test "should show dell" do
    get dell_url(@dell)
    assert_response :success
  end

  test "should get edit" do
    get edit_dell_url(@dell)
    assert_response :success
  end

  test "should update dell" do
    patch dell_url(@dell), params: { dell: { name: @dell.name, ram: @dell.ram } }
    assert_redirected_to dell_url(@dell)
  end

  test "should destroy dell" do
    assert_difference("Dell.count", -1) do
      delete dell_url(@dell)
    end

    assert_redirected_to dells_url
  end
end
