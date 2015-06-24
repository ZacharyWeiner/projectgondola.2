class WorkOrderTimesController < ApplicationController
  before_action :set_work_order_time, only: [:show, :edit, :update, :destroy]

  # GET /work_order_times
  # GET /work_order_times.json
  def index
    @work_order_times = WorkOrderTime.all
  end

  # GET /work_order_times/1
  # GET /work_order_times/1.json
  def show
  end

  # GET /work_order_times/new
  def new
    @work_order_time = WorkOrderTime.new
  end

  # GET /work_order_times/1/edit
  def edit
  end

  # POST /work_order_times
  # POST /work_order_times.json
  def create
    @work_order_time = WorkOrderTime.new(work_order_time_params)

    respond_to do |format|
      if @work_order_time.save
        format.html { redirect_to @work_order_time, notice: 'Work order time was successfully created.' }
        format.json { render :show, status: :created, location: @work_order_time }
      else
        format.html { render :new }
        format.json { render json: @work_order_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /work_order_times/1
  # PATCH/PUT /work_order_times/1.json
  def update
    respond_to do |format|
      if @work_order_time.update(work_order_time_params)
        format.html { redirect_to @work_order_time, notice: 'Work order time was successfully updated.' }
        format.json { render :show, status: :ok, location: @work_order_time }
      else
        format.html { render :edit }
        format.json { render json: @work_order_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_order_times/1
  # DELETE /work_order_times/1.json
  def destroy
    @work_order_time.destroy
    respond_to do |format|
      format.html { redirect_to work_order_times_url, notice: 'Work order time was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_order_time
      @work_order_time = WorkOrderTime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def work_order_time_params
      params.require(:work_order_time).permit(:esitmated_job_duration, :estimated_travel_time, :estimated_wrap_up_duration, :estimated_start, :estimated_wrapup, :actual_job_duration, :actual_travel_duration, :actual_wrap_up_duration, :actual_end_time, :actual_start_time, :actual_completed_time, :standard_job_duration, :work_order_id)
    end
end
