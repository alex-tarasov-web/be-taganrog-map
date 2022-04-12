require "test_helper"

class SinglesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @single = singles(:one)
  end

  test "should get index" do
    get singles_url, as: :json
    assert_response :success
  end

  test "should create single" do
    assert_difference("Single.count") do
      post singles_url, params: { single: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show single" do
    get single_url(@single), as: :json
    assert_response :success
  end

  test "should update single" do
    patch single_url(@single), params: { single: {  } }, as: :json
    assert_response :success
  end

  test "should destroy single" do
    assert_difference("Single.count", -1) do
      delete single_url(@single), as: :json
    end

    assert_response :no_content
  end
end
