class MCountriesController < ApplicationController
  before_action :set_m_country, only: [:show, :edit, :update, :destroy]

  # GET /m_countries
  # GET /m_countries.json
  def index
    @m_countries = MCountry.all
  end

  # GET /m_countries/1
  # GET /m_countries/1.json
  def show
  end

  # GET /m_countries/new
  def new
    @m_country = MCountry.new
  end

  # GET /m_countries/1/edit
  def edit
  end

  # POST /m_countries
  # POST /m_countries.json
  def create
    @m_country = MCountry.new(m_country_params)

    respond_to do |format|
      if @m_country.save
        format.html { redirect_to @m_country, notice: 'M country was successfully created.' }
        format.json { render :show, status: :created, location: @m_country }
      else
        format.html { render :new }
        format.json { render json: @m_country.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /m_countries/1
  # PATCH/PUT /m_countries/1.json
  def update
    respond_to do |format|
      if @m_country.update(m_country_params)
        format.html { redirect_to @m_country, notice: 'M country was successfully updated.' }
        format.json { render :show, status: :ok, location: @m_country }
      else
        format.html { render :edit }
        format.json { render json: @m_country.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /m_countries/1
  # DELETE /m_countries/1.json
  def destroy
    @m_country.destroy
    respond_to do |format|
      format.html { redirect_to m_countries_url, notice: 'M country was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_m_country
      @m_country = MCountry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def m_country_params
      params.require(:m_country).permit(:ncountry)
    end
end
