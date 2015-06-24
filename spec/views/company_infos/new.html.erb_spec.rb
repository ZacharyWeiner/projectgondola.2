require 'rails_helper'

RSpec.describe "company_infos/new", type: :view do
  before(:each) do
    assign(:company_info, CompanyInfo.new(
      :name => "MyString",
      :liability_insurance_company => "MyString",
      :liability_insurance_policy_number => "MyString",
      :workers_comp_company => "MyString",
      :workers_comp_policy_number => "MyString"
    ))
  end

  it "renders new company_info form" do
    render

    assert_select "form[action=?][method=?]", company_infos_path, "post" do

      assert_select "input#company_info_name[name=?]", "company_info[name]"

      assert_select "input#company_info_liability_insurance_company[name=?]", "company_info[liability_insurance_company]"

      assert_select "input#company_info_liability_insurance_policy_number[name=?]", "company_info[liability_insurance_policy_number]"

      assert_select "input#company_info_workers_comp_company[name=?]", "company_info[workers_comp_company]"

      assert_select "input#company_info_workers_comp_policy_number[name=?]", "company_info[workers_comp_policy_number]"
    end
  end
end
