require 'rails_helper'

RSpec.describe "company_infos/index", type: :view do
  before(:each) do
    assign(:company_infos, [
      CompanyInfo.create!(
        :name => "Name",
        :liability_insurance_company => "Liability Insurance Company",
        :liability_insurance_policy_number => "Liability Insurance Policy Number",
        :workers_comp_company => "Workers Comp Company",
        :workers_comp_policy_number => "Workers Comp Policy Number"
      ),
      CompanyInfo.create!(
        :name => "Name",
        :liability_insurance_company => "Liability Insurance Company",
        :liability_insurance_policy_number => "Liability Insurance Policy Number",
        :workers_comp_company => "Workers Comp Company",
        :workers_comp_policy_number => "Workers Comp Policy Number"
      )
    ])
  end

  it "renders a list of company_infos" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Liability Insurance Company".to_s, :count => 2
    assert_select "tr>td", :text => "Liability Insurance Policy Number".to_s, :count => 2
    assert_select "tr>td", :text => "Workers Comp Company".to_s, :count => 2
    assert_select "tr>td", :text => "Workers Comp Policy Number".to_s, :count => 2
  end
end
