require 'rails_helper'

RSpec.describe "technicians/edit", type: :view do
  before(:each) do
    @technician = assign(:technician, Technician.create!(
      :mso_tech_id => "MyString",
      :gchat_id => "MyString",
      :is_active => false,
      :home_phone => "MyString",
      :cell_phone => "MyString",
      :internal_tech_id => "MyString",
      :company_info => nil
    ))
  end

  it "renders the edit technician form" do
    render

    assert_select "form[action=?][method=?]", technician_path(@technician), "post" do

      assert_select "input#technician_mso_tech_id[name=?]", "technician[mso_tech_id]"

      assert_select "input#technician_gchat_id[name=?]", "technician[gchat_id]"

      assert_select "input#technician_is_active[name=?]", "technician[is_active]"

      assert_select "input#technician_home_phone[name=?]", "technician[home_phone]"

      assert_select "input#technician_cell_phone[name=?]", "technician[cell_phone]"

      assert_select "input#technician_internal_tech_id[name=?]", "technician[internal_tech_id]"

      assert_select "input#technician_company_info_id[name=?]", "technician[company_info_id]"
    end
  end
end
