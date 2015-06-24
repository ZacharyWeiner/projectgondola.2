require 'rails_helper'

RSpec.describe "work_order_statuses/new", type: :view do
  before(:each) do
    assign(:work_order_status, WorkOrderStatus.new(
      :partition_id => "MyString",
      :jobstatus => "MyString",
      :sub_status => "MyString",
      :job_status => "MyString",
      :reason_code => "MyString",
      :reason_code_description => "MyString",
      :work_order => nil
    ))
  end

  it "renders new work_order_status form" do
    render

    assert_select "form[action=?][method=?]", work_order_statuses_path, "post" do

      assert_select "input#work_order_status_partition_id[name=?]", "work_order_status[partition_id]"

      assert_select "input#work_order_status_jobstatus[name=?]", "work_order_status[jobstatus]"

      assert_select "input#work_order_status_sub_status[name=?]", "work_order_status[sub_status]"

      assert_select "input#work_order_status_job_status[name=?]", "work_order_status[job_status]"

      assert_select "input#work_order_status_reason_code[name=?]", "work_order_status[reason_code]"

      assert_select "input#work_order_status_reason_code_description[name=?]", "work_order_status[reason_code_description]"

      assert_select "input#work_order_status_work_order_id[name=?]", "work_order_status[work_order_id]"
    end
  end
end
