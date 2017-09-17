class MessageemployeesController < ApplicationController
  before_action :set_messageemployee, only: [:show, :edit, :update, :destroy]

  # GET /messageemployees
  # GET /messageemployees.json
  def index
    @messageemployees = Messageemployee.all
  end

  # GET /messageemployees/1
  # GET /messageemployees/1.json
  def show
  end

  # GET /messageemployees/new
  def new
    @messageemployee = Messageemployee.new
    @employee = Employee.find(params[:candidate_id])
  end

  # GET /messageemployees/1/edit
  def edit
  end

  # POST /messageemployees
  # POST /messageemployees.json
  def create
    @messageemployee = Messageemployee.new(messageemployee_params)

    respond_to do |format|
      if @messageemployee.save
        format.html { redirect_to @messageemployee, notice: 'Messageemployee was successfully created.' }
        format.json { render :show, status: :created, location: @messageemployee }
      else
        format.html { render :new }
        format.json { render json: @messageemployee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /messageemployees/1
  # PATCH/PUT /messageemployees/1.json
  def update
    respond_to do |format|
      if @messageemployee.update(messageemployee_params)
        format.html { redirect_to @messageemployee, notice: 'Messageemployee was successfully updated.' }
        format.json { render :show, status: :ok, location: @messageemployee }
      else
        format.html { render :edit }
        format.json { render json: @messageemployee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /messageemployees/1
  # DELETE /messageemployees/1.json
  def destroy
    @messageemployee.destroy
    respond_to do |format|
      format.html { redirect_to messageemployees_url, notice: 'Messageemployee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_messageemployee
      @messageemployee = Messageemployee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def messageemployee_params
      params.require(:messageemployee).permit(:employee_id, :company_id, :mail)
    end
end
