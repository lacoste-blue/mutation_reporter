class SmellOffensesController < ApplicationController
  before_action :set_smell_offense, only: [:show, :edit, :update, :destroy]

  # GET /smell_offenses
  # GET /smell_offenses.json
  def index
    @smell_offenses = SmellOffense.all
  end

  # GET /smell_offenses/1
  # GET /smell_offenses/1.json
  def show
  end

  # GET /smell_offenses/new
  def new
    @smell_offense = SmellOffense.new
  end

  # GET /smell_offenses/1/edit
  def edit
  end

  # POST /smell_offenses
  # POST /smell_offenses.json
  def create
    @smell_offense = SmellOffense.new(smell_offense_params)

    respond_to do |format|
      if @smell_offense.save
        format.html { redirect_to @smell_offense, notice: 'Smell offense was successfully created.' }
        format.json { render :show, status: :created, location: @smell_offense }
      else
        format.html { render :new }
        format.json { render json: @smell_offense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /smell_offenses/1
  # PATCH/PUT /smell_offenses/1.json
  def update
    respond_to do |format|
      if @smell_offense.update(smell_offense_params)
        format.html { redirect_to @smell_offense, notice: 'Smell offense was successfully updated.' }
        format.json { render :show, status: :ok, location: @smell_offense }
      else
        format.html { render :edit }
        format.json { render json: @smell_offense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /smell_offenses/1
  # DELETE /smell_offenses/1.json
  def destroy
    @smell_offense.destroy
    respond_to do |format|
      format.html { redirect_to smell_offenses_url, notice: 'Smell offense was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_smell_offense
      @smell_offense = SmellOffense.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def smell_offense_params
      params.require(:smell_offense).permit(:application, :branch, :build, :file_name, :line_number, :smell, :offense)
    end
end
