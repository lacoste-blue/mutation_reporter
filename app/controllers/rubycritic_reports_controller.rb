class RubycriticReportsController < ApplicationController
  before_action :set_rubycritic_report, only: [:show, :edit, :update, :destroy]

  # GET /rubycritic_reports
  # GET /rubycritic_reports.json
  def index
    @rubycritic_reports = RubycriticReport.all.paginate(:page => params[:page])
  end

  # GET /rubycritic_reports/1
  # GET /rubycritic_reports/1.json
  def show
  end

  # GET /rubycritic_reports/new
  def new
    @rubycritic_report = RubycriticReport.new
  end

  # GET /rubycritic_reports/1/edit
  def edit
  end

  # POST /rubycritic_reports
  # POST /rubycritic_reports.json
  def create
    @rubycritic_report = RubycriticReport.new(rubycritic_report_params)

    respond_to do |format|
      if @rubycritic_report.save
        format.html { redirect_to @rubycritic_report, notice: 'Rubycritic report was successfully created.' }
        format.json { render :show, status: :created, location: @rubycritic_report }
      else
        format.html { render :new }
        format.json { render json: @rubycritic_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rubycritic_reports/1
  # PATCH/PUT /rubycritic_reports/1.json
  def update
    respond_to do |format|
      if @rubycritic_report.update(rubycritic_report_params)
        format.html { redirect_to @rubycritic_report, notice: 'Rubycritic report was successfully updated.' }
        format.json { render :show, status: :ok, location: @rubycritic_report }
      else
        format.html { render :edit }
        format.json { render json: @rubycritic_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rubycritic_reports/1
  # DELETE /rubycritic_reports/1.json
  def destroy
    @rubycritic_report.destroy
    respond_to do |format|
      format.html { redirect_to rubycritic_reports_url, notice: 'Rubycritic report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rubycritic_report
      @rubycritic_report = RubycriticReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rubycritic_report_params
      params.require(:rubycritic_report).permit(:application, :module_name, :file_name, :line_number, :churn, :committed_at, :complexity, :duplication, :methods_count, :cost, :rating, :type)
    end
end
