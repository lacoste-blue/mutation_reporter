require 'test_helper'

class MutationTestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mutation_test = mutation_tests(:one)
  end

  test "should get index" do
    get mutation_tests_url
    assert_response :success
  end

  test "should get new" do
    get new_mutation_test_url
    assert_response :success
  end

  test "should create mutation_test" do
    assert_difference('MutationTest.count') do
      post mutation_tests_url, params: { mutation_test: { application: @mutation_test.application, class: @mutation_test.class, diff: @mutation_test.diff, file_name: @mutation_test.file_name, lineno: @mutation_test.lineno, method: @mutation_test.method, mutant_id: @mutation_test.mutant_id, type: @mutation_test.type } }
    end

    assert_redirected_to mutation_test_url(MutationTest.last)
  end

  test "should show mutation_test" do
    get mutation_test_url(@mutation_test)
    assert_response :success
  end

  test "should get edit" do
    get edit_mutation_test_url(@mutation_test)
    assert_response :success
  end

  test "should update mutation_test" do
    patch mutation_test_url(@mutation_test), params: { mutation_test: { application: @mutation_test.application, class: @mutation_test.class, diff: @mutation_test.diff, file_name: @mutation_test.file_name, lineno: @mutation_test.lineno, method: @mutation_test.method, mutant_id: @mutation_test.mutant_id, type: @mutation_test.type } }
    assert_redirected_to mutation_test_url(@mutation_test)
  end

  test "should destroy mutation_test" do
    assert_difference('MutationTest.count', -1) do
      delete mutation_test_url(@mutation_test)
    end

    assert_redirected_to mutation_tests_url
  end
end
