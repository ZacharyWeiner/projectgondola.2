require 'rails_helper'

RSpec.describe "work_order_statuses/index", type: :view do
  before(:each) do
    assign(:work_order_statuses, [
      WorkOrderStatus.create!(
        :partition_id => "Partition",
        :jobstatus => "Jobstatus",
        :sub_status => "Sub Status",
        :job_status => "Job Status",
        :reason_code => "Reason Code",
        :reason_code_description => "Reason Code Description",
        :work_order => nil
      ),
      WorkOrderStatus.create!(
        :partition_id => "Partition",
        :jobstatus => "Jobstatus",
        :sub_status => "Sub Status",
        :job_status => "Job Status",
        :reason_code => "Reason Code",
        :reason_code_description => "Reason Code Description",
        :work_order => nil
      )
    ])
  end

  it "renders a list of work_order_statuses" do
    render
    assert_select "tr>td", :text => "Partition".to_s, :count => 2
    assert_select "tr>td", :text => "Jobstatus".to_s, :count => 2
    assert_select "tr>td", :text => "Sub Status".to_s, :count => 2
    assert_select "tr>td", :text => "Job Status".to_s, :count => 2
    assert_select "tr>td", :text => "Reason Code".to_s, :count => 2
    assert_select "tr>td", :text => "Reason Code Description".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
