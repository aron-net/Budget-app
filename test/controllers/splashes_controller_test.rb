require "test_helper"

class SplashesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @splash = splashes(:one)
  end

  test "should get index" do
    get splashes_url
    assert_response :success
  end

  test "should get new" do
    get new_splash_url
    assert_response :success
  end

  test "should create splash" do
    assert_difference("Splash.count") do
      post splashes_url, params: { splash: {  } }
    end

    assert_redirected_to splash_url(Splash.last)
  end

  test "should show splash" do
    get splash_url(@splash)
    assert_response :success
  end

  test "should get edit" do
    get edit_splash_url(@splash)
    assert_response :success
  end

  test "should update splash" do
    patch splash_url(@splash), params: { splash: {  } }
    assert_redirected_to splash_url(@splash)
  end

  test "should destroy splash" do
    assert_difference("Splash.count", -1) do
      delete splash_url(@splash)
    end

    assert_redirected_to splashes_url
  end
end
