class DriversLicesnsesController < ApplicationController
  before_action :set_drivers_licesnse, only: [:show, :edit, :update, :destroy]

  # GET /drivers_licesnses
  # GET /drivers_licesnses.json
  def index
    @drivers_licesnses = DriversLicesnse.all
  end

  # GET /drivers_licesnses/1
  # GET /drivers_licesnses/1.json
  def show
  end

  # GET /drivers_licesnses/new
  def new
    @drivers_licesnse = DriversLicesnse.new
  end

  # GET /drivers_licesnses/1/edit
  def edit
  end

  # POST /drivers_licesnses
  # POST /drivers_licesnses.json
  def create
    @drivers_licesnse = DriversLicesnse.new(drivers_licesnse_params)

    respond_to do |format|
      if @drivers_licesnse.save
        format.html { redirect_to @drivers_licesnse, notice: 'Drivers licesnse was successfully created.' }
        format.json { render :show, status: :created, location: @drivers_licesnse }
      else
        format.html { render :new }
        format.json { render json: @drivers_licesnse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /drivers_licesnses/1
  # PATCH/PUT /drivers_licesnses/1.json
  def update
    respond_to do |format|
      if @drivers_licesnse.update(drivers_licesnse_params)
        format.html { redirect_to @drivers_licesnse, notice: 'Drivers licesnse was successfully updated.' }
        format.json { render :show, status: :ok, location: @drivers_licesnse }
      else
        format.html { render :edit }
        format.json { render json: @drivers_licesnse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drivers_licesnses/1
  # DELETE /drivers_licesnses/1.json
  def destroy
    @drivers_licesnse.destroy
    respond_to do |format|
      format.html { redirect_to drivers_licesnses_url, notice: 'Drivers licesnse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_drivers_licesnse
      @drivers_licesnse = DriversLicesnse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def drivers_licesnse_params
      params.require(:drivers_licesnse).permit(:technician_id, :license_id, :height, :weight, :eye_color, :birthday, :hair_color, :state, :expiration)
    end
end
