require 'test_helper'

class SmellOffensesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @smell_offense = smell_offenses(:one)
  end

  test "should get index" do
    get smell_offenses_url
    assert_response :success
  end

  test "should get new" do
    get new_smell_offense_url
    assert_response :success
  end

  test "should create smell_offense" do
    assert_difference('SmellOffense.count') do
      post smell_offenses_url, params: { smell_offense: { application: @smell_offense.application, branch: @smell_offense.branch, build: @smell_offense.build, file_name: @smell_offense.file_name, line_number: @smell_offense.line_number, offense: @smell_offense.offense, smell: @smell_offense.smell } }
    end

    assert_redirected_to smell_offense_url(SmellOffense.last)
  end

  test "should show smell_offense" do
    get smell_offense_url(@smell_offense)
    assert_response :success
  end

  test "should get edit" do
    get edit_smell_offense_url(@smell_offense)
    assert_response :success
  end

  test "should update smell_offense" do
    patch smell_offense_url(@smell_offense), params: { smell_offense: { application: @smell_offense.application, branch: @smell_offense.branch, build: @smell_offense.build, file_name: @smell_offense.file_name, line_number: @smell_offense.line_number, offense: @smell_offense.offense, smell: @smell_offense.smell } }
    assert_redirected_to smell_offense_url(@smell_offense)
  end

  test "should destroy smell_offense" do
    assert_difference('SmellOffense.count', -1) do
      delete smell_offense_url(@smell_offense)
    end

    assert_redirected_to smell_offenses_url
  end
end
