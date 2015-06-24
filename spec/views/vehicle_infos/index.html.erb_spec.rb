require 'rails_helper'

RSpec.describe "vehicle_infos/index", type: :view do
  before(:each) do
    assign(:vehicle_infos, [
      VehicleInfo.create!(
        :year => 1,
        :make => "Make",
        :model => "Model",
        :registration_state => "Registration State",
        :color => "Color",
        :plate => "Plate",
        :registration_id => "Registration",
        :insurance_company => "Insurance Company",
        :company_info => nil
      ),
      VehicleInfo.create!(
        :year => 1,
        :make => "Make",
        :model => "Model",
        :registration_state => "Registration State",
        :color => "Color",
        :plate => "Plate",
        :registration_id => "Registration",
        :insurance_company => "Insurance Company",
        :company_info => nil
      )
    ])
  end

  it "renders a list of vehicle_infos" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Make".to_s, :count => 2
    assert_select "tr>td", :text => "Model".to_s, :count => 2
    assert_select "tr>td", :text => "Registration State".to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
    assert_select "tr>td", :text => "Plate".to_s, :count => 2
    assert_select "tr>td", :text => "Registration".to_s, :count => 2
    assert_select "tr>td", :text => "Insurance Company".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
