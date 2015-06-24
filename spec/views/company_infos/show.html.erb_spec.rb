require 'rails_helper'

RSpec.describe "company_infos/show", type: :view do
  before(:each) do
    @company_info = assign(:company_info, CompanyInfo.create!(
      :name => "Name",
      :liability_insurance_company => "Liability Insurance Company",
      :liability_insurance_policy_number => "Liability Insurance Policy Number",
      :workers_comp_company => "Workers Comp Company",
      :workers_comp_policy_number => "Workers Comp Policy Number"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Liability Insurance Company/)
    expect(rendered).to match(/Liability Insurance Policy Number/)
    expect(rendered).to match(/Workers Comp Company/)
    expect(rendered).to match(/Workers Comp Policy Number/)
  end
end
