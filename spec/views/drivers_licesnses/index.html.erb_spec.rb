require 'rails_helper'

RSpec.describe "drivers_licesnses/index", type: :view do
  before(:each) do
    assign(:drivers_licesnses, [
      DriversLicesnse.create!(
        :technician => nil,
        :license_id => "License",
        :height => "Height",
        :weight => "Weight",
        :eye_color => "Eye Color",
        :hair_color => "Hair Color",
        :state => "State"
      ),
      DriversLicesnse.create!(
        :technician => nil,
        :license_id => "License",
        :height => "Height",
        :weight => "Weight",
        :eye_color => "Eye Color",
        :hair_color => "Hair Color",
        :state => "State"
      )
    ])
  end

  it "renders a list of drivers_licesnses" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "License".to_s, :count => 2
    assert_select "tr>td", :text => "Height".to_s, :count => 2
    assert_select "tr>td", :text => "Weight".to_s, :count => 2
    assert_select "tr>td", :text => "Eye Color".to_s, :count => 2
    assert_select "tr>td", :text => "Hair Color".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
  end
end
