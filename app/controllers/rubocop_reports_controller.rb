class RubocopReportsController < ApplicationController
  before_action :set_rubocop_report, only: [:show, :edit, :update, :destroy]

  # GET /rubocop_reports
  # GET /rubocop_reports.json
  def index
    @rubocop_reports = RubocopReport.all
  end

  # GET /rubocop_reports/1
  # GET /rubocop_reports/1.json
  def show
  end

  # GET /rubocop_reports/new
  def new
    @rubocop_report = RubocopReport.new
  end

  # GET /rubocop_reports/1/edit
  def edit
  end

  # POST /rubocop_reports
  # POST /rubocop_reports.json
  def create
    @rubocop_report = RubocopReport.new(rubocop_report_params)

    respond_to do |format|
      if @rubocop_report.save
        format.html { redirect_to @rubocop_report, notice: 'Rubocop report was successfully created.' }
        format.json { render :show, status: :created, location: @rubocop_report }
      else
        format.html { render :new }
        format.json { render json: @rubocop_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rubocop_reports/1
  # PATCH/PUT /rubocop_reports/1.json
  def update
    respond_to do |format|
      if @rubocop_report.update(rubocop_report_params)
        format.html { redirect_to @rubocop_report, notice: 'Rubocop report was successfully updated.' }
        format.json { render :show, status: :ok, location: @rubocop_report }
      else
        format.html { render :edit }
        format.json { render json: @rubocop_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rubocop_reports/1
  # DELETE /rubocop_reports/1.json
  def destroy
    @rubocop_report.destroy
    respond_to do |format|
      format.html { redirect_to rubocop_reports_url, notice: 'Rubocop report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rubocop_report
      @rubocop_report = RubocopReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rubocop_report_params
      params.require(:rubocop_report).permit(:application, :string, :file_name, :line_number, :severity, :message, :corrected, :cop_name)
    end
end
