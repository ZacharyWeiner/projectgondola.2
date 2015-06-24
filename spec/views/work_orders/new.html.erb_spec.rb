require 'rails_helper'

RSpec.describe "work_orders/new", type: :view do
  before(:each) do
    assign(:work_order, WorkOrder.new(
      :work_order_uid => "MyString",
      :work_order_number => "MyString",
      :priority => 1,
      :technician => nil,
      :tech_login_id => "MyString",
      :previous_fsr_login_id => "MyString",
      :job_id => "MyString",
      :dwelling_type => "MyString",
      :job_type => "MyString",
      :job_class => "MyString",
      :requirements_list => "MyString",
      :privilege_list => "MyString",
      :routing_area_code => "MyString",
      :routing_area => "MyString",
      :account_number => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :home_phone => "MyString",
      :call_ahead_number => "MyString",
      :customer_id => "MyString",
      :cod_amount => "MyString",
      :drop_type => "MyString",
      :processing_code => "MyString",
      :service_code => "MyString",
      :equipment_type => "MyString",
      :equipment_serial_number => "MyString"
    ))
  end

  it "renders new work_order form" do
    render

    assert_select "form[action=?][method=?]", work_orders_path, "post" do

      assert_select "input#work_order_work_order_uid[name=?]", "work_order[work_order_uid]"

      assert_select "input#work_order_work_order_number[name=?]", "work_order[work_order_number]"

      assert_select "input#work_order_priority[name=?]", "work_order[priority]"

      assert_select "input#work_order_technician_id[name=?]", "work_order[technician_id]"

      assert_select "input#work_order_tech_login_id[name=?]", "work_order[tech_login_id]"

      assert_select "input#work_order_previous_fsr_login_id[name=?]", "work_order[previous_fsr_login_id]"

      assert_select "input#work_order_job_id[name=?]", "work_order[job_id]"

      assert_select "input#work_order_dwelling_type[name=?]", "work_order[dwelling_type]"

      assert_select "input#work_order_job_type[name=?]", "work_order[job_type]"

      assert_select "input#work_order_job_class[name=?]", "work_order[job_class]"

      assert_select "input#work_order_requirements_list[name=?]", "work_order[requirements_list]"

      assert_select "input#work_order_privilege_list[name=?]", "work_order[privilege_list]"

      assert_select "input#work_order_routing_area_code[name=?]", "work_order[routing_area_code]"

      assert_select "input#work_order_routing_area[name=?]", "work_order[routing_area]"

      assert_select "input#work_order_account_number[name=?]", "work_order[account_number]"

      assert_select "input#work_order_first_name[name=?]", "work_order[first_name]"

      assert_select "input#work_order_last_name[name=?]", "work_order[last_name]"

      assert_select "input#work_order_home_phone[name=?]", "work_order[home_phone]"

      assert_select "input#work_order_call_ahead_number[name=?]", "work_order[call_ahead_number]"

      assert_select "input#work_order_customer_id[name=?]", "work_order[customer_id]"

      assert_select "input#work_order_cod_amount[name=?]", "work_order[cod_amount]"

      assert_select "input#work_order_drop_type[name=?]", "work_order[drop_type]"

      assert_select "input#work_order_processing_code[name=?]", "work_order[processing_code]"

      assert_select "input#work_order_service_code[name=?]", "work_order[service_code]"

      assert_select "input#work_order_equipment_type[name=?]", "work_order[equipment_type]"

      assert_select "input#work_order_equipment_serial_number[name=?]", "work_order[equipment_serial_number]"
    end
  end
end
