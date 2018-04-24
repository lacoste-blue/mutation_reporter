class CoverageReportsController < ApplicationController
  before_action :set_coverage_report, only: [:show, :edit, :update, :destroy]

  # GET /coverage_reports
  # GET /coverage_reports.json
  def index
    @coverage_reports = CoverageReport.all
  end

  # GET /coverage_reports/1
  # GET /coverage_reports/1.json
  def show
  end

  # GET /coverage_reports/new
  def new
    @coverage_report = CoverageReport.new
  end

  # GET /coverage_reports/1/edit
  def edit
  end

  # POST /coverage_reports
  # POST /coverage_reports.json
  def create
    @coverage_report = CoverageReport.new(coverage_report_params)

    respond_to do |format|
      if @coverage_report.save
        format.html { redirect_to @coverage_report, notice: 'Coverage report was successfully created.' }
        format.json { render :show, status: :created, location: @coverage_report }
      else
        format.html { render :new }
        format.json { render json: @coverage_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coverage_reports/1
  # PATCH/PUT /coverage_reports/1.json
  def update
    respond_to do |format|
      if @coverage_report.update(coverage_report_params)
        format.html { redirect_to @coverage_report, notice: 'Coverage report was successfully updated.' }
        format.json { render :show, status: :ok, location: @coverage_report }
      else
        format.html { render :edit }
        format.json { render json: @coverage_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coverage_reports/1
  # DELETE /coverage_reports/1.json
  def destroy
    @coverage_report.destroy
    respond_to do |format|
      format.html { redirect_to coverage_reports_url, notice: 'Coverage report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coverage_report
      @coverage_report = CoverageReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coverage_report_params
      params.require(:coverage_report).permit(:application, :file_name, :covered_percent, :covered_strength, :covered_lines, :lines_of_code, :line_number, :repitition)
    end
end
