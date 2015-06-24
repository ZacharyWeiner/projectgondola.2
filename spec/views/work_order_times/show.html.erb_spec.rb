require 'rails_helper'

RSpec.describe "work_order_times/show", type: :view do
  before(:each) do
    @work_order_time = assign(:work_order_time, WorkOrderTime.create!(
      :esitmated_job_duration => 1,
      :estimated_travel_time => 2,
      :estimated_wrap_up_duration => 3,
      :actual_job_duration => 4,
      :actual_travel_duration => 5,
      :actual_wrap_up_duration => 6,
      :standard_job_duration => 7,
      :work_order => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(//)
  end
end
