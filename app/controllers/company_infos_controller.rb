class CompanyInfosController < ApplicationController
  before_action :set_company_info, only: [:show, :edit, :update, :destroy]

  # GET /company_infos
  # GET /company_infos.json
  def index
    @company_infos = CompanyInfo.all
  end

  # GET /company_infos/1
  # GET /company_infos/1.json
  def show
  end

  # GET /company_infos/new
  def new
    @company_info = CompanyInfo.new
  end

  # GET /company_infos/1/edit
  def edit
  end

  # POST /company_infos
  # POST /company_infos.json
  def create
    @company_info = CompanyInfo.new(company_info_params)

    respond_to do |format|
      if @company_info.save
        format.html { redirect_to @company_info, notice: 'Company info was successfully created.' }
        format.json { render :show, status: :created, location: @company_info }
      else
        format.html { render :new }
        format.json { render json: @company_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /company_infos/1
  # PATCH/PUT /company_infos/1.json
  def update
    respond_to do |format|
      if @company_info.update(company_info_params)
        format.html { redirect_to @company_info, notice: 'Company info was successfully updated.' }
        format.json { render :show, status: :ok, location: @company_info }
      else
        format.html { render :edit }
        format.json { render json: @company_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /company_infos/1
  # DELETE /company_infos/1.json
  def destroy
    @company_info.destroy
    respond_to do |format|
      format.html { redirect_to company_infos_url, notice: 'Company info was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company_info
      @company_info = CompanyInfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_info_params
      params.require(:company_info).permit(:name, :contract_date, :liability_insurance_date, :liability_insurance_company, :liability_insurance_policy_number, :workers_comp_company, :workers_comp_policy_number, :business_registrataion_expiration, :annual_filing_date)
    end
end
