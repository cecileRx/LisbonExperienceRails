require 'test_helper'

class LeaksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @leak = leaks(:one)
  end

  test "should get index" do
    get leaks_url
    assert_response :success
  end

  test "should get new" do
    get new_leak_url
    assert_response :success
  end

  test "should create leak" do
    assert_difference('Leak.count') do
      post leaks_url, params: { leak: { description: @leak.description, title: @leak.title } }
    end

    assert_redirected_to leak_url(Leak.last)
  end

  test "should show leak" do
    get leak_url(@leak)
    assert_response :success
  end

  test "should get edit" do
    get edit_leak_url(@leak)
    assert_response :success
  end

  test "should update leak" do
    patch leak_url(@leak), params: { leak: { description: @leak.description, title: @leak.title } }
    assert_redirected_to leak_url(@leak)
  end

  test "should destroy leak" do
    assert_difference('Leak.count', -1) do
      delete leak_url(@leak)
    end

    assert_redirected_to leaks_url
  end
end
