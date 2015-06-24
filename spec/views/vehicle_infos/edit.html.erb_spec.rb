require 'rails_helper'

RSpec.describe "vehicle_infos/edit", type: :view do
  before(:each) do
    @vehicle_info = assign(:vehicle_info, VehicleInfo.create!(
      :year => 1,
      :make => "MyString",
      :model => "MyString",
      :registration_state => "MyString",
      :color => "MyString",
      :plate => "MyString",
      :registration_id => "MyString",
      :insurance_company => "MyString",
      :company_info => nil
    ))
  end

  it "renders the edit vehicle_info form" do
    render

    assert_select "form[action=?][method=?]", vehicle_info_path(@vehicle_info), "post" do

      assert_select "input#vehicle_info_year[name=?]", "vehicle_info[year]"

      assert_select "input#vehicle_info_make[name=?]", "vehicle_info[make]"

      assert_select "input#vehicle_info_model[name=?]", "vehicle_info[model]"

      assert_select "input#vehicle_info_registration_state[name=?]", "vehicle_info[registration_state]"

      assert_select "input#vehicle_info_color[name=?]", "vehicle_info[color]"

      assert_select "input#vehicle_info_plate[name=?]", "vehicle_info[plate]"

      assert_select "input#vehicle_info_registration_id[name=?]", "vehicle_info[registration_id]"

      assert_select "input#vehicle_info_insurance_company[name=?]", "vehicle_info[insurance_company]"

      assert_select "input#vehicle_info_company_info_id[name=?]", "vehicle_info[company_info_id]"
    end
  end
end
