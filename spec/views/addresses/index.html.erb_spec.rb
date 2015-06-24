require 'rails_helper'

RSpec.describe "addresses/index", type: :view do
  before(:each) do
    assign(:addresses, [
      Address.create!(
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
      ),
      Address.create!(
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
      )
    ])
  end

  it "renders a list of addresses" do
    render
    assert_select "tr>td", :text => "Street Number".to_s, :count => 2
    assert_select "tr>td", :text => "Street Name".to_s, :count => 2
    assert_select "tr>td", :text => "Unit".to_s, :count => 2
    assert_select "tr>td", :text => "Address Type".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Full Street Address".to_s, :count => 2
    assert_select "tr>td", :text => "Map Grid".to_s, :count => 2
    assert_select "tr>td", :text => "Latitude".to_s, :count => 2
    assert_select "tr>td", :text => "Longitude".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
