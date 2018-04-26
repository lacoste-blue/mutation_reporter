require 'test_helper'

class MutationsLessSosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mutations_less_so = mutations_less_sos(:one)
  end

  test "should get index" do
    get mutations_less_sos_url
    assert_response :success
  end

  test "should get new" do
    get new_mutations_less_so_url
    assert_response :success
  end

  test "should create mutations_less_so" do
    assert_difference('MutationsLessSo.count') do
      post mutations_less_sos_url, params: { mutations_less_so: { application: @mutations_less_so.application, branch: @mutations_less_so.branch, build: @mutations_less_so.build, diff: @mutations_less_so.diff, file_name: @mutations_less_so.file_name, line_number: @mutations_less_so.line_number } }
    end

    assert_redirected_to mutations_less_so_url(MutationsLessSo.last)
  end

  test "should show mutations_less_so" do
    get mutations_less_so_url(@mutations_less_so)
    assert_response :success
  end

  test "should get edit" do
    get edit_mutations_less_so_url(@mutations_less_so)
    assert_response :success
  end

  test "should update mutations_less_so" do
    patch mutations_less_so_url(@mutations_less_so), params: { mutations_less_so: { application: @mutations_less_so.application, branch: @mutations_less_so.branch, build: @mutations_less_so.build, diff: @mutations_less_so.diff, file_name: @mutations_less_so.file_name, line_number: @mutations_less_so.line_number } }
    assert_redirected_to mutations_less_so_url(@mutations_less_so)
  end

  test "should destroy mutations_less_so" do
    assert_difference('MutationsLessSo.count', -1) do
      delete mutations_less_so_url(@mutations_less_so)
    end

    assert_redirected_to mutations_less_sos_url
  end
end
