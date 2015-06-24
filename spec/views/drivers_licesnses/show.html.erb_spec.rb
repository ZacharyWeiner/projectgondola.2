require 'rails_helper'

RSpec.describe "drivers_licesnses/show", type: :view do
  before(:each) do
    @drivers_licesnse = assign(:drivers_licesnse, DriversLicesnse.create!(
      :technician => nil,
      :license_id => "License",
      :height => "Height",
      :weight => "Weight",
      :eye_color => "Eye Color",
      :hair_color => "Hair Color",
      :state => "State"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/License/)
    expect(rendered).to match(/Height/)
    expect(rendered).to match(/Weight/)
    expect(rendered).to match(/Eye Color/)
    expect(rendered).to match(/Hair Color/)
    expect(rendered).to match(/State/)
  end
end
