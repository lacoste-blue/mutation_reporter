require 'test_helper'

class MutantCoverageReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mutant_coverage_report = mutant_coverage_reports(:one)
  end

  test "should get index" do
    get mutant_coverage_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_mutant_coverage_report_url
    assert_response :success
  end

  test "should create mutant_coverage_report" do
    assert_difference('MutantCoverageReport.count') do
      post mutant_coverage_reports_url, params: { mutant_coverage_report: { application: @mutant_coverage_report.application, covered_lines: @mutant_coverage_report.covered_lines, covered_percent: @mutant_coverage_report.covered_percent, covered_strength: @mutant_coverage_report.covered_strength, file_name: @mutant_coverage_report.file_name, line_number: @mutant_coverage_report.line_number, lines_of_code: @mutant_coverage_report.lines_of_code, repitition: @mutant_coverage_report.repitition } }
    end

    assert_redirected_to mutant_coverage_report_url(MutantCoverageReport.last)
  end

  test "should show mutant_coverage_report" do
    get mutant_coverage_report_url(@mutant_coverage_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_mutant_coverage_report_url(@mutant_coverage_report)
    assert_response :success
  end

  test "should update mutant_coverage_report" do
    patch mutant_coverage_report_url(@mutant_coverage_report), params: { mutant_coverage_report: { application: @mutant_coverage_report.application, covered_lines: @mutant_coverage_report.covered_lines, covered_percent: @mutant_coverage_report.covered_percent, covered_strength: @mutant_coverage_report.covered_strength, file_name: @mutant_coverage_report.file_name, line_number: @mutant_coverage_report.line_number, lines_of_code: @mutant_coverage_report.lines_of_code, repitition: @mutant_coverage_report.repitition } }
    assert_redirected_to mutant_coverage_report_url(@mutant_coverage_report)
  end

  test "should destroy mutant_coverage_report" do
    assert_difference('MutantCoverageReport.count', -1) do
      delete mutant_coverage_report_url(@mutant_coverage_report)
    end

    assert_redirected_to mutant_coverage_reports_url
  end
end
