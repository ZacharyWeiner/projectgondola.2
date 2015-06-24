require 'rails_helper'

RSpec.describe "technicians/show", type: :view do
  before(:each) do
    @technician = assign(:technician, Technician.create!(
      :mso_tech_id => "Mso Tech",
      :gchat_id => "Gchat",
      :is_active => false,
      :home_phone => "Home Phone",
      :cell_phone => "Cell Phone",
      :internal_tech_id => "Internal Tech",
      :company_info => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Mso Tech/)
    expect(rendered).to match(/Gchat/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Home Phone/)
    expect(rendered).to match(/Cell Phone/)
    expect(rendered).to match(/Internal Tech/)
    expect(rendered).to match(//)
  end
end
