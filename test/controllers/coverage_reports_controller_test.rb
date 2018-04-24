require 'test_helper'

class CoverageReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coverage_report = coverage_reports(:one)
  end

  test "should get index" do
    get coverage_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_coverage_report_url
    assert_response :success
  end

  test "should create coverage_report" do
    assert_difference('CoverageReport.count') do
      post coverage_reports_url, params: { coverage_report: { application: @coverage_report.application, covered_lines: @coverage_report.covered_lines, covered_percent: @coverage_report.covered_percent, covered_strength: @coverage_report.covered_strength, file_name: @coverage_report.file_name, line_number: @coverage_report.line_number, lines_of_code: @coverage_report.lines_of_code, repitition: @coverage_report.repitition } }
    end

    assert_redirected_to coverage_report_url(CoverageReport.last)
  end

  test "should show coverage_report" do
    get coverage_report_url(@coverage_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_coverage_report_url(@coverage_report)
    assert_response :success
  end

  test "should update coverage_report" do
    patch coverage_report_url(@coverage_report), params: { coverage_report: { application: @coverage_report.application, covered_lines: @coverage_report.covered_lines, covered_percent: @coverage_report.covered_percent, covered_strength: @coverage_report.covered_strength, file_name: @coverage_report.file_name, line_number: @coverage_report.line_number, lines_of_code: @coverage_report.lines_of_code, repitition: @coverage_report.repitition } }
    assert_redirected_to coverage_report_url(@coverage_report)
  end

  test "should destroy coverage_report" do
    assert_difference('CoverageReport.count', -1) do
      delete coverage_report_url(@coverage_report)
    end

    assert_redirected_to coverage_reports_url
  end
end
