require 'rails_helper'

RSpec.describe "work_order_statuses/show", type: :view do
  before(:each) do
    @work_order_status = assign(:work_order_status, WorkOrderStatus.create!(
      :partition_id => "Partition",
      :jobstatus => "Jobstatus",
      :sub_status => "Sub Status",
      :job_status => "Job Status",
      :reason_code => "Reason Code",
      :reason_code_description => "Reason Code Description",
      :work_order => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Partition/)
    expect(rendered).to match(/Jobstatus/)
    expect(rendered).to match(/Sub Status/)
    expect(rendered).to match(/Job Status/)
    expect(rendered).to match(/Reason Code/)
    expect(rendered).to match(/Reason Code Description/)
    expect(rendered).to match(//)
  end
end
