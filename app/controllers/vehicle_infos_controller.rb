class VehicleInfosController < ApplicationController
  before_action :set_vehicle_info, only: [:show, :edit, :update, :destroy]

  # GET /vehicle_infos
  # GET /vehicle_infos.json
  def index
    @vehicle_infos = VehicleInfo.all
  end

  # GET /vehicle_infos/1
  # GET /vehicle_infos/1.json
  def show
  end

  # GET /vehicle_infos/new
  def new
    @vehicle_info = VehicleInfo.new
  end

  # GET /vehicle_infos/1/edit
  def edit
  end

  # POST /vehicle_infos
  # POST /vehicle_infos.json
  def create
    @vehicle_info = VehicleInfo.new(vehicle_info_params)

    respond_to do |format|
      if @vehicle_info.save
        format.html { redirect_to @vehicle_info, notice: 'Vehicle info was successfully created.' }
        format.json { render :show, status: :created, location: @vehicle_info }
      else
        format.html { render :new }
        format.json { render json: @vehicle_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehicle_infos/1
  # PATCH/PUT /vehicle_infos/1.json
  def update
    respond_to do |format|
      if @vehicle_info.update(vehicle_info_params)
        format.html { redirect_to @vehicle_info, notice: 'Vehicle info was successfully updated.' }
        format.json { render :show, status: :ok, location: @vehicle_info }
      else
        format.html { render :edit }
        format.json { render json: @vehicle_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicle_infos/1
  # DELETE /vehicle_infos/1.json
  def destroy
    @vehicle_info.destroy
    respond_to do |format|
      format.html { redirect_to vehicle_infos_url, notice: 'Vehicle info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_info
      @vehicle_info = VehicleInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vehicle_info_params
      params.require(:vehicle_info).permit(:year, :make, :model, :registration_state, :color, :plate, :registration_id, :registration_expiration, :insurance_company, :insurance_company, :company_info_id)
    end
end
