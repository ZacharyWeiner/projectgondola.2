require 'rails_helper'

RSpec.describe "work_orders/index", type: :view do
  before(:each) do
    assign(:work_orders, [
      WorkOrder.create!(
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
      ),
      WorkOrder.create!(
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
      )
    ])
  end

  it "renders a list of work_orders" do
    render
    assert_select "tr>td", :text => "Work Order Uid".to_s, :count => 2
    assert_select "tr>td", :text => "Work Order Number".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Tech Login".to_s, :count => 2
    assert_select "tr>td", :text => "Previous Fsr Login".to_s, :count => 2
    assert_select "tr>td", :text => "Job".to_s, :count => 2
    assert_select "tr>td", :text => "Dwelling Type".to_s, :count => 2
    assert_select "tr>td", :text => "Job Type".to_s, :count => 2
    assert_select "tr>td", :text => "Job Class".to_s, :count => 2
    assert_select "tr>td", :text => "Requirements List".to_s, :count => 2
    assert_select "tr>td", :text => "Privilege List".to_s, :count => 2
    assert_select "tr>td", :text => "Routing Area Code".to_s, :count => 2
    assert_select "tr>td", :text => "Routing Area".to_s, :count => 2
    assert_select "tr>td", :text => "Account Number".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Home Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Call Ahead Number".to_s, :count => 2
    assert_select "tr>td", :text => "Customer".to_s, :count => 2
    assert_select "tr>td", :text => "Cod Amount".to_s, :count => 2
    assert_select "tr>td", :text => "Drop Type".to_s, :count => 2
    assert_select "tr>td", :text => "Processing Code".to_s, :count => 2
    assert_select "tr>td", :text => "Service Code".to_s, :count => 2
    assert_select "tr>td", :text => "Equipment Type".to_s, :count => 2
    assert_select "tr>td", :text => "Equipment Serial Number".to_s, :count => 2
  end
end
