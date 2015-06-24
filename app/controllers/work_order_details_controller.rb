class WorkOrderDetailsController < ApplicationController
  before_action :set_work_order_detail, only: [:show, :edit, :update, :destroy]

  # GET /work_order_details
  # GET /work_order_details.json
  def index
    @work_order_details = WorkOrderDetail.all
  end

  # GET /work_order_details/1
  # GET /work_order_details/1.json
  def show
  end

  # GET /work_order_details/new
  def new
    @work_order_detail = WorkOrderDetail.new
  end

  # GET /work_order_details/1/edit
  def edit
  end

  # POST /work_order_details
  # POST /work_order_details.json
  def create
    @work_order_detail = WorkOrderDetail.new(work_order_detail_params)

    respond_to do |format|
      if @work_order_detail.save
        format.html { redirect_to @work_order_detail, notice: 'Work order detail was successfully created.' }
        format.json { render :show, status: :created, location: @work_order_detail }
      else
        format.html { render :new }
        format.json { render json: @work_order_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /work_order_details/1
  # PATCH/PUT /work_order_details/1.json
  def update
    respond_to do |format|
      if @work_order_detail.update(work_order_detail_params)
        format.html { redirect_to @work_order_detail, notice: 'Work order detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @work_order_detail }
      else
        format.html { render :edit }
        format.json { render json: @work_order_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_order_details/1
  # DELETE /work_order_details/1.json
  def destroy
    @work_order_detail.destroy
    respond_to do |format|
      format.html { redirect_to work_order_details_url, notice: 'Work order detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_order_detail
      @work_order_detail = WorkOrderDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def work_order_detail_params
      params.require(:work_order_detail).permit(:smsid, :buid, :sms, :contact_phone_number, :business_unit, :versionid, :tzi, :fsruserid, :fsrbuid, :previous_fsr_buid, :dispatcher_id, :key1, :problem_code, :key2, :order_date_time, :due_date_time, :jobtype, :jobclass, :tech_completed, :last_changed, :compliance, :customer_id2, :pricing_category, :pricing_category_description, :campaign_code, :campaign_code_description, :customer_status, :customer_status_description, :customer_info1, :customer_info2, :customer_info3, :customer_info4, :customer_info5, :building_type, :building_type_description, :deliminated_address, :coding_quality, :location_id, :location_info1, :location_info2, :location_info3, :location_info4, :location_info5, :monthly_charge, :job_points, :total_bablace_due, :ordering_operator_id, :contact_name, :contact_phone1, :contact_phone2, :drop_location, :tag_id, :house_status, :quota_group, :quota_area, :detail_text1, :detail_text2, :detail_text3, :detail_text4, :detail_text5, :sms_job_number, :assigning_operator_id, :repeat, :repeat_count, :node_id, :tech_business_unit, :work_order_id)
    end
end
