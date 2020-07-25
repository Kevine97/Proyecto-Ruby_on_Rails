require 'test_helper'

class CinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cine = cines(:one)
  end

  test "should get index" do
    get cines_url
    assert_response :success
  end

  test "should get new" do
    get new_cine_url
    assert_response :success
  end

  test "should create cine" do
    assert_difference('Cine.count') do
      post cines_url, params: { cine: { name: @cine.name, phone: @cine.phone } }
    end

    assert_redirected_to cine_url(Cine.last)
  end

  test "should show cine" do
    get cine_url(@cine)
    assert_response :success
  end

  test "should get edit" do
    get edit_cine_url(@cine)
    assert_response :success
  end

  test "should update cine" do
    patch cine_url(@cine), params: { cine: { name: @cine.name, phone: @cine.phone } }
    assert_redirected_to cine_url(@cine)
  end

  test "should destroy cine" do
    assert_difference('Cine.count', -1) do
      delete cine_url(@cine)
    end

    assert_redirected_to cines_url
  end
end
