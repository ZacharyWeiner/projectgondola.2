require 'rails_helper'

RSpec.describe "vehicle_infos/show", type: :view do
  before(:each) do
    @vehicle_info = assign(:vehicle_info, VehicleInfo.create!(
      :year => 1,
      :make => "Make",
      :model => "Model",
      :registration_state => "Registration State",
      :color => "Color",
      :plate => "Plate",
      :registration_id => "Registration",
      :insurance_company => "Insurance Company",
      :company_info => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Make/)
    expect(rendered).to match(/Model/)
    expect(rendered).to match(/Registration State/)
    expect(rendered).to match(/Color/)
    expect(rendered).to match(/Plate/)
    expect(rendered).to match(/Registration/)
    expect(rendered).to match(/Insurance Company/)
    expect(rendered).to match(//)
  end
end
