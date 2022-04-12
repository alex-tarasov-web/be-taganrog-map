require "test_helper"

class DiscoveryAudiosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @discovery_audio = discovery_audios(:one)
  end

  test "should get index" do
    get discovery_audios_url, as: :json
    assert_response :success
  end

  test "should create discovery_audio" do
    assert_difference("DiscoveryAudio.count") do
      post discovery_audios_url, params: { discovery_audio: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show discovery_audio" do
    get discovery_audio_url(@discovery_audio), as: :json
    assert_response :success
  end

  test "should update discovery_audio" do
    patch discovery_audio_url(@discovery_audio), params: { discovery_audio: {  } }, as: :json
    assert_response :success
  end

  test "should destroy discovery_audio" do
    assert_difference("DiscoveryAudio.count", -1) do
      delete discovery_audio_url(@discovery_audio), as: :json
    end

    assert_response :no_content
  end
end
