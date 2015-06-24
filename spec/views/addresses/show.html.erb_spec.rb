require 'rails_helper'

RSpec.describe "addresses/show", type: :view do
  before(:each) do
    @address = assign(:address, Address.create!(
      :street_number => "Street Number",
      :street_name => "Street Name",
      :unit => "Unit",
      :address_type => "Address Type",
      :city => "City",
      :state => "State",
      :zip => "Zip",
      :full_street_address => "Full Street Address",
      :map_grid => "Map Grid",
      :latitude => "Latitude",
      :longitude => "Longitude",
      :company_info => nil,
      :emergency_contact => nil,
      :work_order => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Street Number/)
    expect(rendered).to match(/Street Name/)
    expect(rendered).to match(/Unit/)
    expect(rendered).to match(/Address Type/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Zip/)
    expect(rendered).to match(/Full Street Address/)
    expect(rendered).to match(/Map Grid/)
    expect(rendered).to match(/Latitude/)
    expect(rendered).to match(/Longitude/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
