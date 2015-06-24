require 'rails_helper'

RSpec.describe "drivers_licesnses/edit", type: :view do
  before(:each) do
    @drivers_licesnse = assign(:drivers_licesnse, DriversLicesnse.create!(
      :technician => nil,
      :license_id => "MyString",
      :height => "MyString",
      :weight => "MyString",
      :eye_color => "MyString",
      :hair_color => "MyString",
      :state => "MyString"
    ))
  end

  it "renders the edit drivers_licesnse form" do
    render

    assert_select "form[action=?][method=?]", drivers_licesnse_path(@drivers_licesnse), "post" do

      assert_select "input#drivers_licesnse_technician_id[name=?]", "drivers_licesnse[technician_id]"

      assert_select "input#drivers_licesnse_license_id[name=?]", "drivers_licesnse[license_id]"

      assert_select "input#drivers_licesnse_height[name=?]", "drivers_licesnse[height]"

      assert_select "input#drivers_licesnse_weight[name=?]", "drivers_licesnse[weight]"

      assert_select "input#drivers_licesnse_eye_color[name=?]", "drivers_licesnse[eye_color]"

      assert_select "input#drivers_licesnse_hair_color[name=?]", "drivers_licesnse[hair_color]"

      assert_select "input#drivers_licesnse_state[name=?]", "drivers_licesnse[state]"
    end
  end
end
