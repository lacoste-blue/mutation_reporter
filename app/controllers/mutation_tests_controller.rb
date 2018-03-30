class MutationTestsController < ApplicationController
  before_action :set_mutation_test, only: [:show, :edit, :update, :destroy]

  # GET /mutation_tests
  # GET /mutation_tests.json
  def index
    @mutation_tests = MutationTest.all
  end

  # GET /mutation_tests/1
  # GET /mutation_tests/1.json
  def show
  end

  # GET /mutation_tests/new
  def new
    @mutation_test = MutationTest.new
  end

  # GET /mutation_tests/1/edit
  def edit
  end

  # POST /mutation_tests
  # POST /mutation_tests.json
  def create
    @mutation_test = MutationTest.new(mutation_test_params)

    respond_to do |format|
      if @mutation_test.save
        format.html { redirect_to @mutation_test, notice: 'Mutation test was successfully created.' }
        format.json { render :show, status: :created, location: @mutation_test }
      else
        format.html { render :new }
        format.json { render json: @mutation_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mutation_tests/1
  # PATCH/PUT /mutation_tests/1.json
  def update
    respond_to do |format|
      if @mutation_test.update(mutation_test_params)
        format.html { redirect_to @mutation_test, notice: 'Mutation test was successfully updated.' }
        format.json { render :show, status: :ok, location: @mutation_test }
      else
        format.html { render :edit }
        format.json { render json: @mutation_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mutation_tests/1
  # DELETE /mutation_tests/1.json
  def destroy
    @mutation_test.destroy
    respond_to do |format|
      format.html { redirect_to mutation_tests_url, notice: 'Mutation test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mutation_test
      @mutation_test = MutationTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mutation_test_params
      params.require(:mutation_test).permit(:application, :mutant_id, :file_name, :lineno, :class, :method, :diff, :type)
    end
end
