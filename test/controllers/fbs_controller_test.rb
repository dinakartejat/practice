require "test_helper"

class FbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fb = fbs(:one)
  end

  test "should get index" do
    get fbs_url
    assert_response :success
  end

  test "should get new" do
    get new_fb_url
    assert_response :success
  end

  test "should create fb" do
    assert_difference("Fb.count") do
      post fbs_url, params: { fb: { firstname: @fb.firstname } }
    end

    assert_redirected_to fb_url(Fb.last)
  end

  test "should show fb" do
    get fb_url(@fb)
    assert_response :success
  end

  test "should get edit" do
    get edit_fb_url(@fb)
    assert_response :success
  end

  test "should update fb" do
    patch fb_url(@fb), params: { fb: { firstname: @fb.firstname } }
    assert_redirected_to fb_url(@fb)
  end

  test "should destroy fb" do
    assert_difference("Fb.count", -1) do
      delete fb_url(@fb)
    end

    assert_redirected_to fbs_url
  end
end
