require 'test_helper'

class RubycriticReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rubycritic_report = rubycritic_reports(:one)
  end

  test "should get index" do
    get rubycritic_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_rubycritic_report_url
    assert_response :success
  end

  test "should create rubycritic_report" do
    assert_difference('RubycriticReport.count') do
      post rubycritic_reports_url, params: { rubycritic_report: { application: @rubycritic_report.application, churn: @rubycritic_report.churn, committed_at: @rubycritic_report.committed_at, complexity: @rubycritic_report.complexity, cost: @rubycritic_report.cost, duplication: @rubycritic_report.duplication, file_name: @rubycritic_report.file_name, line_number: @rubycritic_report.line_number, methods_count: @rubycritic_report.methods_count, module_name: @rubycritic_report.module_name, rating: @rubycritic_report.rating, type: @rubycritic_report.type } }
    end

    assert_redirected_to rubycritic_report_url(RubycriticReport.last)
  end

  test "should show rubycritic_report" do
    get rubycritic_report_url(@rubycritic_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_rubycritic_report_url(@rubycritic_report)
    assert_response :success
  end

  test "should update rubycritic_report" do
    patch rubycritic_report_url(@rubycritic_report), params: { rubycritic_report: { application: @rubycritic_report.application, churn: @rubycritic_report.churn, committed_at: @rubycritic_report.committed_at, complexity: @rubycritic_report.complexity, cost: @rubycritic_report.cost, duplication: @rubycritic_report.duplication, file_name: @rubycritic_report.file_name, line_number: @rubycritic_report.line_number, methods_count: @rubycritic_report.methods_count, module_name: @rubycritic_report.module_name, rating: @rubycritic_report.rating, type: @rubycritic_report.type } }
    assert_redirected_to rubycritic_report_url(@rubycritic_report)
  end

  test "should destroy rubycritic_report" do
    assert_difference('RubycriticReport.count', -1) do
      delete rubycritic_report_url(@rubycritic_report)
    end

    assert_redirected_to rubycritic_reports_url
  end
end
