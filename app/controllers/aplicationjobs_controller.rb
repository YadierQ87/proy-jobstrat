class AplicationjobsController < ApplicationController
  before_action :set_aplicationjob, only: [:show, :edit, :update, :destroy]

  # GET /aplicationjobs
  # GET /aplicationjobs.json
  def index
    #@aplicationjobs = Aplicationjob.all
    @filterrific = initialize_filterrific(
        Aplicationjob,
        params[:filterrific]
    ) or return
    @aplicationjobs = @filterrific.find.page(params[:page]).per(params[:cantd])
  end

  # GET /aplicationjobs/1
  # GET /aplicationjobs/1.json
  def show
  end

  # GET /aplicationjobs/new
  def new
    @aplicationjob = Aplicationjob.new
  end

  # GET /aplicationjobs/1/edit
  def edit
  end

  # POST /aplicationjobs
  # POST /aplicationjobs.json
  def create
    @aplicationjob = Aplicationjob.new(aplicationjob_params)

    respond_to do |format|
      if @aplicationjob.save
        format.html { redirect_to @aplicationjob, notice: 'Aplicationjob was successfully created.' }
        format.json { render :show, status: :created, location: @aplicationjob }
      else
        format.html { render :new }
        format.json { render json: @aplicationjob.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aplicationjobs/1
  # PATCH/PUT /aplicationjobs/1.json
  def update
    respond_to do |format|
      if @aplicationjob.update(aplicationjob_params)
        format.html { redirect_to @aplicationjob, notice: 'Aplicationjob was successfully updated.' }
        format.json { render :show, status: :ok, location: @aplicationjob }
      else
        format.html { render :edit }
        format.json { render json: @aplicationjob.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aplicationjobs/1
  # DELETE /aplicationjobs/1.json
  def destroy
    @aplicationjob.destroy
    respond_to do |format|
      format.html { redirect_to aplicationjobs_url, notice: 'Aplicationjob was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aplicationjob
      @aplicationjob = Aplicationjob.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aplicationjob_params
      params.require(:aplicationjob).permit(:job_id, :employee_id, :description)
    end
end
