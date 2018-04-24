require 'test_helper'

class RubocopReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rubocop_report = rubocop_reports(:one)
  end

  test "should get index" do
    get rubocop_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_rubocop_report_url
    assert_response :success
  end

  test "should create rubocop_report" do
    assert_difference('RubocopReport.count') do
      post rubocop_reports_url, params: { rubocop_report: { application: @rubocop_report.application, cop_name: @rubocop_report.cop_name, corrected: @rubocop_report.corrected, file_name: @rubocop_report.file_name, line_number: @rubocop_report.line_number, message: @rubocop_report.message, severity: @rubocop_report.severity, string: @rubocop_report.string } }
    end

    assert_redirected_to rubocop_report_url(RubocopReport.last)
  end

  test "should show rubocop_report" do
    get rubocop_report_url(@rubocop_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_rubocop_report_url(@rubocop_report)
    assert_response :success
  end

  test "should update rubocop_report" do
    patch rubocop_report_url(@rubocop_report), params: { rubocop_report: { application: @rubocop_report.application, cop_name: @rubocop_report.cop_name, corrected: @rubocop_report.corrected, file_name: @rubocop_report.file_name, line_number: @rubocop_report.line_number, message: @rubocop_report.message, severity: @rubocop_report.severity, string: @rubocop_report.string } }
    assert_redirected_to rubocop_report_url(@rubocop_report)
  end

  test "should destroy rubocop_report" do
    assert_difference('RubocopReport.count', -1) do
      delete rubocop_report_url(@rubocop_report)
    end

    assert_redirected_to rubocop_reports_url
  end
end
