class MutantCoverageReportsController < ApplicationController
  before_action :set_mutant_coverage_report, only: [:show, :edit, :update, :destroy]

  # GET /mutant_coverage_reports
  # GET /mutant_coverage_reports.json
  def index
    @mutant_coverage_reports = MutantCoverageReport.all
  end

  # GET /mutant_coverage_reports/1
  # GET /mutant_coverage_reports/1.json
  def show
  end

  # GET /mutant_coverage_reports/new
  def new
    @mutant_coverage_report = MutantCoverageReport.new
  end

  # GET /mutant_coverage_reports/1/edit
  def edit
  end

  # POST /mutant_coverage_reports
  # POST /mutant_coverage_reports.json
  def create
    @mutant_coverage_report = MutantCoverageReport.new(mutant_coverage_report_params)

    respond_to do |format|
      if @mutant_coverage_report.save
        format.html { redirect_to @mutant_coverage_report, notice: 'Mutant coverage report was successfully created.' }
        format.json { render :show, status: :created, location: @mutant_coverage_report }
      else
        format.html { render :new }
        format.json { render json: @mutant_coverage_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mutant_coverage_reports/1
  # PATCH/PUT /mutant_coverage_reports/1.json
  def update
    respond_to do |format|
      if @mutant_coverage_report.update(mutant_coverage_report_params)
        format.html { redirect_to @mutant_coverage_report, notice: 'Mutant coverage report was successfully updated.' }
        format.json { render :show, status: :ok, location: @mutant_coverage_report }
      else
        format.html { render :edit }
        format.json { render json: @mutant_coverage_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mutant_coverage_reports/1
  # DELETE /mutant_coverage_reports/1.json
  def destroy
    @mutant_coverage_report.destroy
    respond_to do |format|
      format.html { redirect_to mutant_coverage_reports_url, notice: 'Mutant coverage report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mutant_coverage_report
      @mutant_coverage_report = MutantCoverageReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mutant_coverage_report_params
      params.require(:mutant_coverage_report).permit(:application, :file_name, :covered_percent, :covered_strength, :covered_lines, :lines_of_code, :line_number, :repitition)
    end
end
