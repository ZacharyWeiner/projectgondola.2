require 'rails_helper'

RSpec.describe "time_slots/index", type: :view do
  before(:each) do
    assign(:time_slots, [
      TimeSlot.create!(
        :code => "Code",
        :description => "Description",
        :work_order => nil
      ),
      TimeSlot.create!(
        :code => "Code",
        :description => "Description",
        :work_order => nil
      )
    ])
  end

  it "renders a list of time_slots" do
    render
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
