require 'rails_helper'

RSpec.describe "work_orders/show", type: :view do
  before(:each) do
    @work_order = assign(:work_order, WorkOrder.create!(
      :work_order_uid => "Work Order Uid",
      :work_order_number => "Work Order Number",
      :priority => 1,
      :technician => nil,
      :tech_login_id => "Tech Login",
      :previous_fsr_login_id => "Previous Fsr Login",
      :job_id => "Job",
      :dwelling_type => "Dwelling Type",
      :job_type => "Job Type",
      :job_class => "Job Class",
      :requirements_list => "Requirements List",
      :privilege_list => "Privilege List",
      :routing_area_code => "Routing Area Code",
      :routing_area => "Routing Area",
      :account_number => "Account Number",
      :first_name => "First Name",
      :last_name => "Last Name",
      :home_phone => "Home Phone",
      :call_ahead_number => "Call Ahead Number",
      :customer_id => "Customer",
      :cod_amount => "Cod Amount",
      :drop_type => "Drop Type",
      :processing_code => "Processing Code",
      :service_code => "Service Code",
      :equipment_type => "Equipment Type",
      :equipment_serial_number => "Equipment Serial Number"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Work Order Uid/)
    expect(rendered).to match(/Work Order Number/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Tech Login/)
    expect(rendered).to match(/Previous Fsr Login/)
    expect(rendered).to match(/Job/)
    expect(rendered).to match(/Dwelling Type/)
    expect(rendered).to match(/Job Type/)
    expect(rendered).to match(/Job Class/)
    expect(rendered).to match(/Requirements List/)
    expect(rendered).to match(/Privilege List/)
    expect(rendered).to match(/Routing Area Code/)
    expect(rendered).to match(/Routing Area/)
    expect(rendered).to match(/Account Number/)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Home Phone/)
    expect(rendered).to match(/Call Ahead Number/)
    expect(rendered).to match(/Customer/)
    expect(rendered).to match(/Cod Amount/)
    expect(rendered).to match(/Drop Type/)
    expect(rendered).to match(/Processing Code/)
    expect(rendered).to match(/Service Code/)
    expect(rendered).to match(/Equipment Type/)
    expect(rendered).to match(/Equipment Serial Number/)
  end
end
