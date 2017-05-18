require 'test_helper'

class PalmersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @palmer = palmers(:one)
  end

  test "should get index" do
    get palmers_url
    assert_response :success
  end

  test "should get new" do
    get new_palmer_url
    assert_response :success
  end

  test "should create palmer" do
    assert_difference('Palmer.count') do
      post palmers_url, params: { palmer: { name: @palmer.name } }
    end

    assert_redirected_to palmer_url(Palmer.last)
  end

  test "should show palmer" do
    get palmer_url(@palmer)
    assert_response :success
  end

  test "should get edit" do
    get edit_palmer_url(@palmer)
    assert_response :success
  end

  test "should update palmer" do
    patch palmer_url(@palmer), params: { palmer: { name: @palmer.name } }
    assert_redirected_to palmer_url(@palmer)
  end

  test "should destroy palmer" do
    assert_difference('Palmer.count', -1) do
      delete palmer_url(@palmer)
    end

    assert_redirected_to palmers_url
  end
end
