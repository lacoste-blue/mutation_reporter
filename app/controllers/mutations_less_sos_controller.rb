class MutationsLessSosController < ApplicationController
  before_action :set_mutations_less_so, only: [:show, :edit, :update, :destroy]

  # GET /mutations_less_sos
  # GET /mutations_less_sos.json
  def index
    @mutations_less_sos = MutationsLessSo.all
  end

  # GET /mutations_less_sos/1
  # GET /mutations_less_sos/1.json
  def show
  end

  # GET /mutations_less_sos/new
  def new
    @mutations_less_so = MutationsLessSo.new
  end

  # GET /mutations_less_sos/1/edit
  def edit
  end

  # POST /mutations_less_sos
  # POST /mutations_less_sos.json
  def create
    @mutations_less_so = MutationsLessSo.new(mutations_less_so_params)

    respond_to do |format|
      if @mutations_less_so.save
        format.html { redirect_to @mutations_less_so, notice: 'Mutations less so was successfully created.' }
        format.json { render :show, status: :created, location: @mutations_less_so }
      else
        format.html { render :new }
        format.json { render json: @mutations_less_so.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mutations_less_sos/1
  # PATCH/PUT /mutations_less_sos/1.json
  def update
    respond_to do |format|
      if @mutations_less_so.update(mutations_less_so_params)
        format.html { redirect_to @mutations_less_so, notice: 'Mutations less so was successfully updated.' }
        format.json { render :show, status: :ok, location: @mutations_less_so }
      else
        format.html { render :edit }
        format.json { render json: @mutations_less_so.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mutations_less_sos/1
  # DELETE /mutations_less_sos/1.json
  def destroy
    @mutations_less_so.destroy
    respond_to do |format|
      format.html { redirect_to mutations_less_sos_url, notice: 'Mutations less so was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mutations_less_so
      @mutations_less_so = MutationsLessSo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mutations_less_so_params
      params.require(:mutations_less_so).permit(:application, :branch, :build, :file_name, :line_number, :diff)
    end
end
