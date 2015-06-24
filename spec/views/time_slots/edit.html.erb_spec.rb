require 'rails_helper'

RSpec.describe "time_slots/edit", type: :view do
  before(:each) do
    @time_slot = assign(:time_slot, TimeSlot.create!(
      :code => "MyString",
      :description => "MyString",
      :work_order => nil
    ))
  end

  it "renders the edit time_slot form" do
    render

    assert_select "form[action=?][method=?]", time_slot_path(@time_slot), "post" do

      assert_select "input#time_slot_code[name=?]", "time_slot[code]"

      assert_select "input#time_slot_description[name=?]", "time_slot[description]"

      assert_select "input#time_slot_work_order_id[name=?]", "time_slot[work_order_id]"
    end
  end
end
