require "test_helper"

class MuseumsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @museum = museums(:one)
  end

  test "should get index" do
    get museums_url, as: :json
    assert_response :success
  end

  test "should create museum" do
    assert_difference("Museum.count") do
      post museums_url, params: { museum: { name: @museum.name } }, as: :json
    end

    assert_response :created
  end

  test "should show museum" do
    get museum_url(@museum), as: :json
    assert_response :success
  end

  test "should update museum" do
    patch museum_url(@museum), params: { museum: { name: @museum.name } }, as: :json
    assert_response :success
  end

  test "should destroy museum" do
    assert_difference("Museum.count", -1) do
      delete museum_url(@museum), as: :json
    end

    assert_response :no_content
  end
end
