require "test_helper"

class DiscoveryVideosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @discovery_video = discovery_videos(:one)
  end

  test "should get index" do
    get discovery_videos_url, as: :json
    assert_response :success
  end

  test "should create discovery_video" do
    assert_difference("DiscoveryVideo.count") do
      post discovery_videos_url, params: { discovery_video: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show discovery_video" do
    get discovery_video_url(@discovery_video), as: :json
    assert_response :success
  end

  test "should update discovery_video" do
    patch discovery_video_url(@discovery_video), params: { discovery_video: {  } }, as: :json
    assert_response :success
  end

  test "should destroy discovery_video" do
    assert_difference("DiscoveryVideo.count", -1) do
      delete discovery_video_url(@discovery_video), as: :json
    end

    assert_response :no_content
  end
end
